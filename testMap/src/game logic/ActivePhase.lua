local Active = {}

local playerHandler         = require("lib.PlayerHandler")
local playerDragonHandler   = require("lib.PlayerDragonHandler")
local bag                   = require("lib.Bag")

local uiConroller           = require("ui.GameUiController")

function Active.StartPhase()
    local phaseHandler = require("lib.PhaseHandler")

    --@debug@
    print("Активная фаза - Начало")
    print("Текущий раунд " .. phaseHandler.GetCurrentRound())
    --@debug-end@

    for p, _ in pairs(playerHandler.GetPlayers()) do
        bag.RefreshFoodBag(p)
        playerHandler.SetExplosionChance(p, 0)
        playerDragonHandler.ResetPosition(p)
        playerHandler.SetIsDoneWithAction(p, false)
        
        uiConroller.TakeFood.SetCount(p)
        uiConroller.TakeFood.SetEnabled(p, true)
        uiConroller.TakeFood.Show(p)

        uiConroller.SkipAction.Reset(p)
    end
end

function Active.EndPhase()

    for p, _ in pairs(playerHandler.GetPlayers()) do
        uiConroller.TakeFood.Hide(p)
    end
    
    print("Активная фаза - Конец")
end

return Active