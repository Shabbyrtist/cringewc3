local PlayerDragonHandler = {}

function PlayerDragonHandler.MoveDragonForPlayer(p, steps)
    local playerHandler = require("lib.PlayerHandler")
    local players = playerHandler.GetPlayers()
    local dragon = players[p].dragonUnit
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
            DestroyTimer(timer)
            return
        end
        
        local yy = GetUnitY(dragon) + tiksY
        SetUnitPosition(dragon, x, yy)
    end)
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