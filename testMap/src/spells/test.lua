local spellId = FourCC('AHhb')
local spell = GetUnitAbilityLevel(GetTriggerUnit(), spellId)
local spellHandler = require("lib.SpellHandler")

spellHandler.Register(spellId, function(caster, target)
    print(GetUnitName(caster) .. " кастует " .. BlzGetAbilityTooltip(spellId, spell))
end)