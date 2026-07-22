local PlayerDragonHandler = {}
local foodDB = require("lib.FoodDB")
local playerHandler = require("lib.PlayerHandler")
local eventBus = require("lib.EventBus")

local function ExposionAnimation(p, steps)
    
    local dragon = playerHandler.GetDragonUnit(p)
    local effDragon = AddSpecialEffect(MDL_DRAGON_RED, GetUnitX(dragon), GetUnitY(dragon))
    local effDragonTrail = AddSpecialEffect(MDL_EXPLOSION_TRAIL, GetUnitX(dragon), GetUnitY(dragon))
    DestroyEffect(AddSpecialEffect(MDL_MEATEXPLOSION, GetUnitX(dragon), GetUnitY(dragon)))
    ShowUnitHide(dragon)
    BlzSetSpecialEffectScale(effDragon, 0.5)
    BlzSetSpecialEffectScale(effDragonTrail, 0.25)

    local time = 2
    local x = BlzGetLocalSpecialEffectX(effDragon)
    local y = BlzGetLocalSpecialEffectY(effDragon)
    local z = BlzGetLocalSpecialEffectZ(effDragon)

    local distance = steps * SETTINGS_TRACK_SEGMENTS_LENGTH 

    local targetX = GetUnitX(dragon)
    local targetY = y - distance
    local targetZ = 0

    local dx = targetX - x
    local dy = targetY - y
    local dz = targetZ - z
    local distance = math.sqrt(dx*dx + dy*dy)

    local currentTime = 0
    local heightMultiplier = 4
    local maxHeightLimit = 250
    local calculatedHeight = math.max(50, distance * heightMultiplier / 8)
    local arcHeight = math.min(calculatedHeight, maxHeightLimit)

    local timer = CreateTimer()
    TimerStart(timer, 0.03, true,
        function()
            currentTime = currentTime + 0.03

            if currentTime >= time then
                local currentSegment = playerHandler.GetCurrentTrackSegment(p) - steps
                playerHandler.SetCurrentTrackSegment(p, currentSegment)

                SetUnitPosition(dragon, x, targetY)
                ShowUnitShow(dragon)

                DestroyEffect(effDragon)
                DestroyEffect(effDragonTrail)

                DestroyTimer(timer)

                local newSteps = math.max(1, math.floor(steps * SETTINGS_EXPLOSION_PROGRESS_FACTOR))
                if GetRandomInt(1, 100) <= 50 and currentSegment - newSteps > 0 then
                    ExposionAnimation(p, newSteps)
                else
                    eventBus.fire(TrigDB.OnPlayerFinishActionPhase, p)
                end
                return
            end

            local t = currentTime / time
            local currentX = x + dx * t
            local currentY = y + dy * t
            local currentZ = z + dz * t + arcHeight * heightMultiplier * t * (1 - t)
            local rotationsNumber = 10
            local a = t * rotationsNumber * math.pi
            BlzSetSpecialEffectPosition(effDragon, currentX, currentY, currentZ)
            BlzSetSpecialEffectPosition(effDragonTrail, currentX, currentY, currentZ)
            BlzSetSpecialEffectRoll(effDragon, a)
            BlzSetSpecialEffectYaw(effDragon, a)
        end
    )
end

function PlayerDragonHandler.MovePlayerDragon(p, foodName)

    local foodSteps = foodDB.GetFoodStepsForPlayer(foodName, p)
    local currentSegment = playerHandler.GetCurrentTrackSegment(p)
    if currentSegment + foodSteps > SETTINGS_TRACK_SEGMENTS_NUMBER then
        foodSteps = SETTINGS_TRACK_SEGMENTS_NUMBER - currentSegment
    end

    local dragon = playerHandler.GetDragonUnit(p)
    local speed = 25
    local x = GetUnitX(dragon)

    local distance = foodSteps * SETTINGS_TRACK_SEGMENTS_LENGTH 
    local currentY = GetUnitY(dragon)
    local targetY = currentY + distance
    distance = math.abs(distance)
    
    local tik = 0
    local tiks = math.ceil(distance / speed)
    local tiksY = distance / tiks
    
    local timer = CreateTimer()
    
    TimerStart(timer, 0.03, true, function()
        tik = tik + 1
        if tik >= tiks then
            SetUnitPosition(dragon, x, targetY)

            eventBus.fire(TrigDB.OnDragonMovementEnd, p, foodName, currentSegment + foodSteps)

            DestroyTimer(timer)
            return
        end
        
        local yy = GetUnitY(dragon) + tiksY
        SetUnitPosition(dragon, x, yy)
    end)
end

function PlayerDragonHandler.ResetPosition(p)
    local dragon = playerHandler.GetDragonUnit(p)
    local trackHandler = require("lib.TrackHandler")
    local x = trackHandler.GetPlayerTrackX(p)
    local y = trackHandler.GetPlayerTrackSegmentY(p, 0)

    SetUnitPosition(dragon, x, y)
    playerHandler.SetCurrentTrackSegment(p, 0)

    for i = 0, SETTINGS_TRACK_SEGMENTS_NUMBER do
        if trackHandler.GetPlayerTrackSegmentFoodName(p, i) ~= "" then
            DestroyEffect(trackHandler.GetPlayerTrackSegmentFoodEffect(p, i))
            trackHandler.SetPlayerTrackSegmentFoodName(p, i, "")
        end
    end
        
    if (GetLocalPlayer() == p) then
        SelectUnit(dragon, true)
    end
end

function PlayerDragonHandler.CreateDragonForPlayer(p)
    local scale = 0.5
    local dragon = CreateUnit(p, FourCC('dPl1'), 0., 0., 90.)
    
    UnitRemoveAbility(dragon, FourCC('Aatk'))
    UnitRemoveAbility(dragon, FourCC('Amov'))
    UnitAddAbility(dragon, FourCC('Avul'))
    SetUnitFlyHeight(dragon, 90, 0.)
    SetUnitScale(dragon, scale, scale, scale)
    
    return dragon
end

-- ============================================
-- Подписки
-- ============================================

eventBus.sub_OnPlayerStartActionPhase(
    function(p)
        PlayerDragonHandler.ResetPosition(p)
    end
)

eventBus.sub_OnFeedingAnimationEnd(
    function(p, foodName)
        PlayerDragonHandler.MovePlayerDragon(p, foodName)
    end
)

eventBus.sub_OnPlayerExploded(
    function(p)
        local steps = math.max(1, math.floor(playerHandler.GetCurrentTrackSegment(p) * SETTINGS_EXPLOSION_PROGRESS_FACTOR))
        ExposionAnimation(p, steps)
    end
)

return PlayerDragonHandler