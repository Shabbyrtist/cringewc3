local PlayerDragonHandler = {}
local playerHandler = require("lib.PlayerHandler")

local function EndOfMovement(p)
    local dragon = playerHandler.GetDragonUnit(p)
    local chance, isExploded = PlayerDragonHandler.IsPlayerDragonExploded(p)
    local activePhase = require("game logic.ActivePhase")

    --@debug@
    print("Выпашее значение: " .. chance .. "; Шанс взрыва: " .. playerHandler.GetExplosionChance(p))
    --@debug-end@

    if isExploded then
        activePhase.PlayerAction(p, "exploded")
    end
end

function PlayerDragonHandler.IsPlayerDragonExploded(p)
    local chance = GetRandomInt(1, 100)
    local playerExplosionChance = playerHandler.GetExplosionChance(p)
    local playerExplosionChanceTrashhold = playerHandler.GetExplosionChanceTrashhold(p)

    return chance, (chance < playerExplosionChance) and (playerExplosionChance > playerExplosionChanceTrashhold)
end

function PlayerDragonHandler.MovePlayerDragon(p, steps, callbackEnd)
    local dragon = playerHandler.GetDragonUnit(p)
    local speed = 25
    local x = GetUnitX(dragon)

    local distance = steps * SETTINGS_TRACK_SEGMENTS_LENGTH 
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
            playerHandler.SetCurrentTrackSegment(p, playerHandler.GetCurrentTrackSegment(p) + steps)
            --EndOfMovement(p)
            callbackEnd()
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
        if trackHandler.GetPlayerTrackSegmentFoodName ~= "" then
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

return PlayerDragonHandler