local Active = {}

local playerHandler         = require("lib.PlayerHandler")
local playerDragonHandler   = require("lib.PlayerDragonHandler")
local soundHandler          = require("lib.SoundHandler")
local trackHandler          = require("lib.TrackHandler")
local foodDB                = require("lib.FoodDB")
local bag                   = require("lib.Bag")
local playerAction          = require("game logic.PlayerAction")

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

        if (phaseHandler.GetCurrentRound() == 1) then
            takeFood.Show(p)
        end 
        
    end
end

function Active.EndPhase()
    print("Активная фаза - Конец")
end

return Active