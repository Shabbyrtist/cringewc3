local Active = {}

function Active.StartPhase()
    print("Активная фаза - Начало")
    
    local phaseHandler = require("lib.PhaseHandler")
    local playerHandler = require("lib.PlayerHandler")
    local playerDragonHandler = require("lib.PlayerDragonHandler")
    local foodDB = require("lib.FoodDB")
    local bag = require("lib.Bag")

    print("Текущий раунд " .. phaseHandler.GetCurrentRound())

    for p, data in pairs(playerHandler.GetPlayers()) do

        if bag.IsEmpty(p) then
            print("Игрок " .. GetPlayerName(p) .. ": мешок пуст, пропускаем")
        end

        local food = bag.GetRandom(p)
        
        --@debug@
        print("Игрок " .. GetPlayerName(p) .. ": вытащена еда у которой шанс " .. foodDB.GetFoodExplosionChance(food) ..
            ", шагов: " .. foodDB.GetFoodSteps(food))
        --@debug-end@

        playerDragonHandler.MoveDragonForPlayer(p, foodDB.GetFoodSteps(food))
    end
    --phaseHandler.NextState()
end

function Active.EndPhase()
    print("Активная фаза - Конец")
end

return Active