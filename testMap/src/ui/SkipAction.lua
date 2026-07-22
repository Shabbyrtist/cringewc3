local SkipAction = {}

local UI = require("ui.UI")

local playerHandler = require("lib.PlayerHandler")
local eventBus  = require("lib.EventBus")
 
windows = {}

function SkipAction.Create(p, callback)
    callback = callback or {}

    local skipButton
    local cancelButton

    local width = 0.08
    local height = 0.035

    skipButton = UI.CreateButton({
        text = "Skip",
        width = width,
        height = height,

        onClick = function(_, triggerPlayer)
            if triggerPlayer ~= p then
                return
            end

            if callback.onSkip then
                callback.onSkip(triggerPlayer)
            end
        end,
    })

    cancelButton = UI.CreateButton({
        text = "|cffff4040Cancel|r",
        width = width,
        height = height,

        onClick = function(_, triggerPlayer)
            if triggerPlayer ~= p then
                return
            end

            if callback.onCancel then
                callback.onCancel(triggerPlayer)
            end
        end,
    })
    
    UI.SetAbsPoint(
        skipButton.button,
        FRAMEPOINT_CENTER,
        0.52,
        0.15
    )

    UI.SetAbsPoint(
        cancelButton.button,
        FRAMEPOINT_CENTER,
        0.52,
        0.15
    )

    UI.Hide(skipButton.button)
    UI.Hide(cancelButton.button)

    windows[p] = {
        skipButton = skipButton,
        cancelButton = cancelButton,
    }
end


function SkipAction.Show(p)
    local window = windows[p]

    if not window or GetLocalPlayer() ~= p then
        return
    end

    UI.Show(window.skipButton.button)
    UI.Hide(window.cancelButton.button)
end


function SkipAction.Hide(p)
    local window = windows[p]

    if not window or GetLocalPlayer() ~= p then
        return
    end

    UI.Hide(window.skipButton.button)
    UI.Hide(window.cancelButton.button)
end


function SkipAction.Toggle(p)
    local window = windows[p]

    if not window or GetLocalPlayer() ~= p then
        return
    end


    if UI.IsVisible(window.skipButton.button) then
        UI.Hide(window.skipButton.button)
        UI.Show(window.cancelButton.button)
    else
        UI.Hide(window.cancelButton.button)
        UI.Show(window.skipButton.button)
    end
end


function SkipAction.Reset(p)
    local window = windows[p]

    if not window or GetLocalPlayer() ~= p then
        return
    end

    UI.Show(window.skipButton.button)
    UI.Hide(window.cancelButton.button)
end

-- ============================================
-- Подписки
-- ============================================

eventBus.sub_OnPlayerStartActionPhase(
    function(p)
        SkipAction.Reset(p)
    end
)

eventBus.sub_OnPullFromBag(
    function(p)
        SkipAction.Hide(p)
    end
)

eventBus.sub_OnPullFromBagEnd(
    function(p)
        SkipAction.Show(p)
    end
)

return SkipAction