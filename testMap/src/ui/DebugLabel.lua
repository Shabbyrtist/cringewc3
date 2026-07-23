local UI = require("ui.UI")

local InfoLabel = {}

local windows = {}
local labels = {}

function InfoLabel.Create(p)
    local root = UI.CreatePanel({
        width = 0.25,
        height = 0.30,
    })

    UI.SetAbsPoint(
        root,
        FRAMEPOINT_TOPRIGHT,
        0.95,
        0.85
    )

    -- Создаем заголовок с явным выравниванием по верху
    local title = UI.CreateText({
        parent = root,
        text = "Information",
        fontSize = 0.014,
        width = 0.22,
        height = 0.02,
        visible = true,
        verticalAlign = TEXT_JUSTIFY_TOP,  -- выравнивание по верху
        horizontalAlign = TEXT_JUSTIFY_LEFT,  -- выравнивание по левому краю
    })

    UI.SetPoint(
        title,
        FRAMEPOINT_TOPLEFT,
        root,
        FRAMEPOINT_TOPLEFT,
        0.0,
        0.0
    )

    -- Создаем контент с явным выравниванием по верху
    local contentText = UI.CreateText({
        parent = root,
        text = "",
        fontSize = 0.011,
        width = 0.23,
        height = 0.27,
        visible = true,
        verticalAlign = TEXT_JUSTIFY_TOP,  -- выравнивание по верху
        horizontalAlign = TEXT_JUSTIFY_LEFT,  -- выравнивание по левому краю
    })

    UI.SetPoint(
        contentText,
        FRAMEPOINT_TOPLEFT,
        title,
        FRAMEPOINT_BOTTOMLEFT,
        0.0,
        0.0
    )

    local window = {
        root = root,
        contentText = contentText,
    }

    windows[p] = window
    labels[p] = {}

    -- Принудительно показываем для локального игрока
    if GetLocalPlayer() == p then
        UI.Show(root)
    end

end

local function UpdateDisplay(p)
    local window = windows[p]
    if not window or GetLocalPlayer() ~= p then
        return
    end

    local text = ""
    local playerLabels = labels[p]
    
    if playerLabels then
        for name, value in pairs(playerLabels) do
            text = text .. name .. ": " .. tostring(value) .. "\n"
        end
    end

    if text == "" then
        text = "No data"
    end

    UI.SetText(window.contentText, text)
end

function InfoLabel.AddLine(p, name, value)
    if not labels[p] then
        return
    end

    labels[p][name] = value
    UpdateDisplay(p)
end

function InfoLabel.UpdateValue(p, name, value)
    if not labels[p] then
        return
    end

    labels[p][name] = value
    UpdateDisplay(p)
end

function InfoLabel.RemoveLine(p, name)
    if not labels[p] then
        return
    end

    labels[p][name] = nil
    UpdateDisplay(p)
end

function InfoLabel.Clear(p)
    if not labels[p] then
        return
    end

    labels[p] = {}
    UpdateDisplay(p)
end

function InfoLabel.Show(p)
    local window = windows[p]
    if window and GetLocalPlayer() == p then
        UI.Show(window.root)
    end
end

function InfoLabel.Hide(p)
    local window = windows[p]
    if window and GetLocalPlayer() == p then
        UI.Hide(window.root)
    end
end

return InfoLabel