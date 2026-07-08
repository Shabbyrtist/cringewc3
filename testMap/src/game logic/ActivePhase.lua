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
        local pId = GetPlayerId(p)

        if bag.IsEmpty(p) then
            print("Игрок " .. pId .. ": мешок пуст, пропускаем")
            goto continue
        end

        local food = bag.GetRandom(p)
        print("Игрок " .. pId .. ": вытащена еда у которой шанс'" .. food.explosionChance .. "', шагов: " .. food.steps)
        
        playerDragonHandler.MoveDragonForPlayer(p, food.steps)
        ::continue::
    end
    --phaseHandler.NextState()
end

function Active.EndPhase()
    print("Активная фаза - Конец")
end

return Active