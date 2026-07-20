local takeFood = require("ui.TakeFood")
local UI = require("ui.UI")
local playerAction = require("game logic.PlayerAction")

local GameUIController = {}

function GameUIController.CreatePlayerUI(p)
    takeFood.Create(p, {
        onClick = function(_, p)
            playerAction.PullFromBag(p)
            takeFood.SetCount(p)
            takeFood.SetButtonEnabled(p, false)
        end,
    })
end

return GameUIController