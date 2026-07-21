local UI = require("ui.UI")

local TakeFood = {}

local windows = {}

local playerHandler         = require("lib.PlayerHandler")
local playerDragonHandler   = require("lib.PlayerDragonHandler")
local soundHandler          = require("lib.SoundHandler")
local trackHandler          = require("lib.TrackHandler")
local foodDB                = require("lib.FoodDB")
local bag                   = require("lib.Bag")


function TakeFood.Create(p, callback)
    local root = UI.CreatePanel({
        width = 0.30,
        height = 0.24,
    })

    UI.SetAbsPoint(
        root,
        FRAMEPOINT_CENTER,
        0.40,
        0.32
    )

    local title = UI.CreateText({
        parent = root,
        text = "UI Test - " .. GetPlayerName(p),
        fontSize = 0.016,
        width = 0.22,
        height = 0.025,
        visible = true,
    })

    UI.SetPoint(
        title,
        FRAMEPOINT_TOP,
        root,
        FRAMEPOINT_TOP,
        0.0,
        -0.015
    )
    
    UI.Hide(root)

    local counterText = UI.CreateText({
        parent = root,
        text = "The amount of food:" .. bag.BufferCount(p),
        fontSize = 0.012,
        width = 0.16,
        height = 0.025,
    })

    UI.SetPoint(
        counterText,
        FRAMEPOINT_TOP,
        title,
        FRAMEPOINT_BOTTOM,
        0.0,
        -0.02
    )

    local iconButton = UI.CreateIconButton({
        parent = root,

        icon =
            "ReplaceableTextures\\CommandButtons\\BTNPickUpItem.blp",
    
        tooltip = "Take food from the bag",

        width = 0.05,
        height = 0.05,

        onClick = function(_, triggerPlayer)
            if triggerPlayer ~= p then
                return
            end

            if callback.onPull then
                callback.onPull(triggerPlayer)
            end
        end,
    })

    UI.SetPoint(
        iconButton.button,
        FRAMEPOINT_TOP,
        counterText,
        FRAMEPOINT_BOTTOM,
        0.0,
        -0.015
    )

        local window = {
        root = root,
        counterText = counterText,
        pullButton = iconButton
    }

    windows[p] = window

    local closeButton = UI.CreateButton({
        parent = root,
        text = "X",
        width = 0.028,
        height = 0.028,

        onClick = function(_, triggerPlayer)
            if triggerPlayer ~= p then
                return
            end

            TakeFood.Hide(p)
        end,
    })

    UI.SetPoint(
        closeButton.button,
        FRAMEPOINT_TOPRIGHT,
        root,
        FRAMEPOINT_TOPRIGHT,
        -0.008,
        -0.008
    )

    UI.Hide(root)
end

function TakeFood.SetEnabled(p, enabled)
    local window = windows[p]

    if not window or GetLocalPlayer() ~= p then
        return
    end

    UI.SetEnabled(window.pullButton, enabled)
end


function TakeFood.SetCount(p)
    local window = windows[p]

    if not window or GetLocalPlayer() ~= p then
        return
    end

    local count = bag.BufferCount(p)

    UI.SetText(
        window.counterText,
        "The amount of food: " .. tostring(count)
    )
end


function TakeFood.Show(p)
    local frame = windows[p].root
    
    if GetLocalPlayer() == p then
        UI.Show(frame)
    end
end


function TakeFood.Hide(p)
    local frame = windows[p].root
    
    if GetLocalPlayer() == p then
        UI.Hide(frame)
    end
end


return TakeFood