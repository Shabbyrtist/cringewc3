local ChatAlertHandler = {}

local langDB      = require("lib.LangDB")
local eventBus      = require("lib.EventBus")
local playerHandler = require("lib.PlayerHandler")

function ChatAlertHandler.GetLangCode()
    local locale = BlzGetLocale()
    if locale and #locale >= 2 then
        return string.sub(locale, 1, 2)
    end
    return "en" -- fallback
end

function ChatAlertHandler.L(key, ...)
    local langCode  = ChatAlertHandler.GetLangCode()
    local text = langDB[langCode] and langDB[langCode][key] or langDB["en"][key]
    if not text then return "!" .. key .. "!" end
    
    -- Если есть дополнительные аргументы, подставляем их
    if select('#', ...) > 0 then
        text = string.format(text, ...)
    end
    return text
end

--[[
BlzGetLocale() - АСИНХРОННАЯ функция, возвращает язык для локального игрока

"ruRU"	Русский
"enUS"	Английский (США)
"enGB"	Английский (Великобритания), вероятно, никогда не существовал
"deDE"	Немецкий
"frFR"	Французский
"esES"	Испанский
"itIT"	Итальянский
"csCZ"	Чешский
"plPL"	Польский
"ptBR"	Бразильский португальский
"ptPT"	Португальский (Португалия)
"jaJA"	Японский
"koKR"	Корейский
"zhCN"	Китайский (упрощенный)
"zhTW"	Китайский (традиционный)
"thTH"	Тайский
"tkTK"	Турецкий
]]
-- ============================================
-- Подписки
-- ============================================

eventBus.sub_OnPlayerStartActionPhase(
    function (p, currentRound)
        if GetLocalPlayer() == p then
            print(ChatAlertHandler.L("LK_ActionPhaseStarts", currentRound))
        end
    end
)

eventBus.sub_OnPlayerFinishActionTimerTik(
    function (p, tiks)
        if GetLocalPlayer() == p then
            print(ChatAlertHandler.L("LK_PlayerFinishActionTimerTik", tiks))
        end
    end
)

return ChatAlertHandler