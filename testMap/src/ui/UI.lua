--[[ToDo разобраться как работает EmmyLua-анотация,
 чтобы описывать параметры options для каждой ф-ии]]

local UI = {}

local frameContext = 0

local DEFAULT_FONT = "Fonts\\FRIZQT__.TTF"
local DEFAULT_PANEL_TEXTURE =
    "UI\\Widgets\\EscMenu\\Human\\human-options-menu-background.blp"

local DEFAULT_ICON =
    "ReplaceableTextures\\CommandButtons\\BTNSelectHeroOn.blp"


function UI.HideDefaultUI()
    BlzHideOriginFrames(true)
end


local systemMenuButton

function UI.CreateMenuButton()
    if systemMenuButton then
        return systemMenuButton
    end

    local defaultMenuButton =
        BlzGetOriginFrame(
            ORIGIN_FRAME_SYSTEM_BUTTON,
            0
        )

    systemMenuButton = UI.CreateButton({
        parent = UI.GetGameUI(),
        text = "Menu",
        width = 0.075,
        height = 0.028,

        onClick = function()
            if defaultMenuButton then
                BlzFrameClick(defaultMenuButton)
            end
        end,
    })

    UI.SetAbsPoint(
        systemMenuButton.button,
        FRAMEPOINT_TOPRIGHT,
        0.095,
        0.595
    )

    return systemMenuButton
end


-- Возвращает уникальный context для создаваемых frame
local function NextContext()
    frameContext = frameContext + 1
    return frameContext
end


-- Корневой frame игрового интерфейса
function UI.GetGameUI()
    return BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0)
end


-- Панель / фон / контейнер

function UI.CreatePanel(options)
    options = options or {}

    local parent = options.parent or UI.GetGameUI()

    local frame = BlzCreateFrameByType(
        "BACKDROP",
        options.name or "",
        parent,
        "",
        NextContext()
    )

    BlzFrameSetSize(
        frame,
        options.width or 0.20,
        options.height or 0.10
    )

    BlzFrameSetTexture(
        frame,
        options.texture or DEFAULT_PANEL_TEXTURE,
        0,
        options.blend == true
    )

    if options.alpha ~= nil then
        BlzFrameSetAlpha(frame, options.alpha)
    end

    if options.visible ~= nil then
        BlzFrameSetVisible(frame, options.visible)
    end

    return frame
end


-- Текст
function UI.CreateText(options)
    options = options or {}

    local parent = options.parent or UI.GetGameUI()

    local frame = BlzCreateFrameByType(
        "TEXT",
        options.name or "",
        parent,
        "",
        NextContext()
    )

    BlzFrameSetText(frame, options.text or "")

    BlzFrameSetFont(
        frame,
        options.font or DEFAULT_FONT,
        options.fontSize or 0.012,
        options.fontFlags or 0
    )

    BlzFrameSetTextAlignment(
        frame,
        options.verticalAlign or TEXT_JUSTIFY_MIDDLE,
        options.horizontalAlign or TEXT_JUSTIFY_CENTER
    )

    -- Чтобы текс не перехватывал мышь
    BlzFrameSetEnable(frame, false)

    if options.width and options.height then
        BlzFrameSetSize(
            frame,
            options.width,
            options.height
        )
    end

    if options.color then
        BlzFrameSetTextColor(frame, options.color)
    end

    if options.visible ~= nil then
        BlzFrameSetVisible(frame, options.visible)
    end

    return frame
end


local function CreateTooltip(parent, text)
    local tooltip = BlzCreateFrameByType(
        "BACKDROP",
        "",
        UI.GetGameUI(),
        "",
        NextContext()
    )

    BlzFrameSetTexture(
        tooltip,
        DEFAULT_PANEL_TEXTURE,
        0,
        true
    )

    BlzFrameSetSize(
        tooltip,
        0.18,
        0.045
    )

    local tooltipText = BlzCreateFrameByType(
        "TEXT",
        "",
        tooltip,
        "",
        NextContext()
    )

    BlzFrameSetText(
        tooltipText,
        text or ""
    )

    BlzFrameSetFont(
        tooltipText,
        DEFAULT_FONT,
        0.011,
        0
    )

    BlzFrameSetTextAlignment(
        tooltipText,
        TEXT_JUSTIFY_MIDDLE,
        TEXT_JUSTIFY_CENTER
    )

    BlzFrameSetPoint(
        tooltipText,
        FRAMEPOINT_CENTER,
        tooltip,
        FRAMEPOINT_CENTER,
        0.0,
        0.0
    )

    BlzFrameSetSize(
        tooltipText,
        0.16,
        0.035
    )

    BlzFrameSetEnable(tooltip, false)
    BlzFrameSetEnable(tooltipText, false)

    BlzFrameSetPoint(
        tooltip,
        FRAMEPOINT_BOTTOM,
        parent,
        FRAMEPOINT_TOP,
        0.0,
        0.01
    )

    BlzFrameSetVisible(
        tooltip,
        false
    )

    return tooltip
end


-- Вспомогательная ф-ия для создания функционала кнопки
local function RegisterClick(component, onClick)
    local trigger = CreateTrigger()

    BlzTriggerRegisterFrameEvent(
        trigger,
        component.button,
        FRAMEEVENT_CONTROL_CLICK
    )

    TriggerAddAction(trigger, function()
        --BlzFrameSetEnable(frame, false)
        --BlzFrameSetEnable(frame, true)

        if onClick then
            onClick(component, GetTriggerPlayer())
        end
    end)

    return trigger
end


function UI.CreateButton(options)
    options = options or {}

    local parent = options.parent or UI.GetGameUI()

    local frame = BlzCreateFrameByType(
        "GLUETEXTBUTTON",
        options.name or "",
        parent,
        options.template or "ScriptDialogButton",
        NextContext()
    )

    BlzFrameSetText(frame, options.text or "Button")

    BlzFrameSetSize(
        frame,
        options.width or 0.10,
        options.height or 0.035
    )

    local component = {
        button = frame,
        trigger = nil,
        tooltip = nil,
        --enabled = options.enabled ~= false,
    }

    component.trigger = RegisterClick(component, options.onClick)

    if options.tooltip then
        component.tooltip = CreateTooltip(
            frame,
            options.tooltip
        )

        BlzFrameSetTooltip(
            frame,
            component.tooltip
        )
    end

    if options.visible ~= nil then
        BlzFrameSetVisible(frame, options.visible)
    end

    return component
end


function UI.CreateIconButton(options)
    options = options or {}

    local parent = options.parent or UI.GetGameUI()

    local button = BlzCreateFrameByType(
        "BUTTON",
        options.name or "",
        parent,
        options.template or "IconButtonTemplate",
        NextContext()
    )

    BlzFrameSetSize(
        button,
        options.width or 0.04,
        options.height or 0.04
    )

    local icon = BlzCreateFrameByType(
        "BACKDROP",
        "",
        button,
        "",
        NextContext()
    )

    BlzFrameSetAllPoints(icon, button)

    BlzFrameSetTexture(
        icon,
        options.icon or DEFAULT_ICON,
        0,
        options.blend == true
    )

    -- Иконка только отображается, клики принимает button
    BlzFrameSetEnable(icon, false)

    local component = {
        button = button,
        icon = icon,
        trigger = nil,
        tooltip = nil,
        --enabled = options.enabled ~= false,
    }

    component.trigger = RegisterClick(component, options.onClick)

    if options.tooltip then
        component.tooltip = CreateTooltip(
            button,
            options.tooltip
        )

        BlzFrameSetTooltip(
            button,
            component.tooltip
        )
    end

    if options.visible ~= nil then
        BlzFrameSetVisible(button, options.visible)
    end

    return component
end


function UI.SetEnabled(component, enabled)
    BlzFrameSetEnable(component.button, enabled)

    if component.icon then
        BlzFrameSetAlpha(
            component.icon,
            enabled and 255 or 100
        )
    end
end


-- Привязка одного frame к другому
function UI.SetPoint(
    frame,
    point,
    relative,
    relativePoint,
    x,
    y
)
    BlzFrameClearAllPoints(frame)

    BlzFrameSetPoint(
        frame,
        point,
        relative,
        relativePoint,
        x or 0.0,
        y or 0.0
    )
end


-- Абсолютная позиция на экране
function UI.SetAbsPoint(frame, point, x, y)
    BlzFrameClearAllPoints(frame)

    BlzFrameSetAbsPoint(
        frame,
        point,
        x,
        y
    )
end


function UI.SetSize(frame, width, height)
    BlzFrameSetSize(frame, width, height)
end


function UI.Show(frame)
    BlzFrameSetVisible(frame, true)
end


function UI.Hide(frame)
    BlzFrameSetVisible(frame, false)
end


function UI.Toggle(frame)
    BlzFrameSetVisible(frame, not BlzFrameIsVisible(frame))
end


function UI.SetText(frame, text)
    BlzFrameSetText(frame, text)
end


function UI.SetTexture(frame, texture, blend)
    BlzFrameSetTexture(
        frame,
        texture,
        0,
        blend == true
    )
end

function UI.IsVisible(frame)
    return BlzFrameIsVisible(frame)
end


return UI