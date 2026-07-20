local Active = {}

local playerHandler         = require("lib.PlayerHandler")
local playerDragonHandler   = require("lib.PlayerDragonHandler")
local bag                   = require("lib.Bag")

--test
local takeFood = require("ui.TakeFood")

function Active.StartPhase()
    local phaseHandler = require("lib.PhaseHandler")

    --@debug@
    print("Активная фаза - Начало")
    print("Текущий раунд " .. phaseHandler.GetCurrentRound())
    --@debug-end@

    for p, data in pairs(playerHandler.GetPlayers()) do
        bag.RefreshFoodBag(p)
        playerHandler.SetExplosionChance(p, 0)
        playerDragonHandler.ResetPosition(p)
        playerHandler.SetIsDoneWithAction(p, false)
        
        takeFood.SetCount(p)
        takeFood.SetButtonEnabled(p, true)
        takeFood.Show(p)
    end
end

function Active.EndPhase()

    for p, data in pairs(playerHandler.GetPlayers()) do
        takeFood.Hide(p)
    end
    
    print("Активная фаза - Конец")
end

return Active