local LangDB = {
    ru = {},
    en = {},
}

local c = {}
c.info = "|cff87CEEB"
c.c = "#87CEEB"
c.attention = "|cffF0E68C"
c.c = "#F0E68C"
c.warning = "|cffFA8072"
c.c = "#FA8072"
c.close = "|r"

LangDB.ru.LK_ActionPhaseStarts = c.info .. "[РАУНД %d]".. c.close .. c.attention .." Фаза кормежки началась!" .. c.close .. " Накормите своих драконов, но " .. c.warning .. "не перекормите!" .. c.close
LangDB.en.LK_ActionPhaseStarts = c.info .. "[ROUND %d]".. c.close .. c.attention .." The feeding phase has begun!" .. c.close .. " Feed your dragons, but " .. c.warning .. "don't overfeed them!" .. c.close

LangDB.ru.LK_PlayerFinishActionTimerTik = c.warning .. "Завершение раунда через: " .. c.close .. c.info .. "%d секунд" .. c.close 
LangDB.en.LK_PlayerFinishActionTimerTik = c.warning .. "Round ends in: " .. c.close .. c.info .. "%d seconds" .. c.close 


return LangDB