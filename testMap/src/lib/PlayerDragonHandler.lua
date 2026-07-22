local PlayerDragonHandler = {}
local foodDB = require("lib.FoodDB")
local playerHandler = require("lib.PlayerHandler")
local eventBus = require("lib.EventBus")

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

return PlayerDragonHandler