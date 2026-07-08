local GameStart = {}

function GameStart.StartPhase()
    print("Старт игры - Начало")
    
    local phaseHandler          = require("lib.PhaseHandler")
    local playerHandler         = require("lib.PlayerHandler")
    local playerDragonHandler   = require("lib.PlayerDragonHandler")
    local trackHandler          = require("lib.TrackHandler")
    --local foodDB                = require("lib.FoodDB")
    local bag                   = require("lib.Bag")

    for p, data in pairs(playerHandler.GetPlayers()) do
        local pId = GetPlayerId(p)

        local trackStartRegion = _G["gg_rct_trackStartPlayer" .. (pId + 1)]
        data.trackStartRegion = trackStartRegion
        local x = GetRectCenterX(trackStartRegion)
        local y = GetRectCenterY(trackStartRegion)

        local dragon = playerDragonHandler.CreateDragonForPlayer(p)
        data.dragonUnit = dragon
        SetUnitPosition(dragon, x, y)

        trackHandler.CreateTrackForPlayer(p)

        bag.AddFood(p, "Timmy")
        bag.AddFood(p, "Timmy")
        bag.AddFood(p, "Timmy")
        bag.AddFood(p, "Timmy")
        print("Игрок " .. pId .. ": добавлено 4 Timmy, всего в мешке = " .. bag.Count(p))        

        -- без == p всегда true
        if (GetLocalPlayer()) then
            SelectUnit(dragon, true)
            SetCameraPosition(x, y)
        end
    end

    phaseHandler.NextState()
end

function GameStart.EndPhase()
    print("Старт игры - Конец")
end

return GameStart