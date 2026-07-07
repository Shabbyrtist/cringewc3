local Active = {}

function Active.StartPhase()
    print("Активная фаза - Начало")
    
    local phaseHandler = require("lib.PhaseHandler")
    local playerHandler = require("lib.PlayerHandler")
    local playerDragonHandler = require("lib.PlayerDragonHandler")
    local foodDB = require("lib.FoodDB") 

    print("Текущий раунд " .. phaseHandler.GetCurrentRound())

    for p, data in pairs(playerHandler.GetPlayers()) do
        local steps = foodDB.GetFoodUnitSteps(playerHandler.GetFoodBag(p)[1])
        playerDragonHandler.MoveDragonForPlayer(p, steps)
    end
    --phaseHandler.NextState()
end

function Active.EndPhase()
    print("Активная фаза - Конец")
end

return Active