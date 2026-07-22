local UI = require("ui.UI")

local TakeFood = {}

local windows = {}

local playerHandler = require("lib.PlayerHandler")
local eventBus  = require("lib.EventBus")


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
        text = "",
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


function TakeFood.SetCount(p, value)
    local window = windows[p]

    if not window or GetLocalPlayer() ~= p then
        return
    end

    UI.SetText(
        window.counterText,
        "The amount of food: " .. tostring(value)
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

-- ============================================
-- Подписки
-- ============================================

eventBus.sub_OnPlayerStartActionPhase(
    function(p)
        TakeFood.SetEnabled(p, true)
        TakeFood.Show(p)
    end
)

eventBus.sub_OnBagRefresh(
    function(p, value)
        TakeFood.SetCount(p, value)
    end
)

eventBus.sub_OnPullFromBagEnd(
    function(p)
        TakeFood.SetEnabled(p, true)
    end
)

return TakeFood