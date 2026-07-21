local skipAction = require("ui.SkipAction")
local takeFood = require("ui.TakeFood")

local playerAction = require("game logic.PlayerAction")

local playerHandler = require("lib.PlayerHandler")

local GameUIController = {}

function GameUIController.CreatePlayerUI(p)
    takeFood.Create(p, {
        onPull = function(p)
            playerAction.PullFromBag(p)
            takeFood.SetCount(p)
            takeFood.SetEnabled(p, false)
        end,
    })

    skipAction.Create(p, {
        onSkip = function(p)
            if playerHandler.GetIsDoneWithAction(p) then
                -- ToDo add enable button 
                return
            end

            playerAction.FinishPlayerAction(p)
            skipAction.Toggle(p)
        end,

        onCancel = function(p)
            if not playerHandler.GetIsDoneWithAction(p) then
                return
            end

            playerHandler.SetIsDoneWithAction(p, false)
            skipAction.Toggle(p)
        end,
    }) 
end


GameUIController.TakeFood = {}

function GameUIController.TakeFood.Show(p)
    takeFood.Show(p)
end


function GameUIController.TakeFood.Hide(p)
    takeFood.Hide(p)
end


function GameUIController.TakeFood.SetCount(p)
    takeFood.SetCount(p)
end


function GameUIController.TakeFood.SetEnabled(p, enabled)
    takeFood.SetEnabled(p, enabled)
end


GameUIController.SkipAction = {}

function GameUIController.SkipAction.ShowSkip(p)
    skipAction.ShowSkip(p)
end


function GameUIController.SkipAction.ShowCancel(p)
    skipAction.ShowCancel(p)
end


function GameUIController.SkipAction.Reset(p)
    skipAction.Reset(p)
end


function GameUIController.SkipAction.Hide(p)
    skipAction.Hide(p)
end


return GameUIController