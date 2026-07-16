local takeFood = require("ui.TakeFood")
local UI = require("ui.UI")
local playerAction = require("game logic.PlayerAction")

local GameUIController = {}

function GameUIController.CreatePlayerUI(p)
    takeFood.Create(p, {
        onClick = function(component, player)
            UI.SetButtonEnabled(component, false)
            
            local started = playerAction.PullFromBag(player,
                function(canContinue)
                    --@debug@
                    print("UI canContinue:", tostring(canContinue))
                    --@debug-end@
                    takeFood.SetCount(player)
                    takeFood.SetButtonEnabled(player, canContinue)
                end
            )

            if not started then
                takeFood.SetCount(p)
                takeFood.SetButtonEnabled(p, false)
            end
        end,
    })
end

return GameUIController