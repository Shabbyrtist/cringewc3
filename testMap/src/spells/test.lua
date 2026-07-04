local spellId = FourCC('AHhb')
local spell = GetUnitAbilityLevel(GetTriggerUnit(), spellId)

SpellHandler.Register(spellId, function(caster, target)
    print(GetUnitName(caster) .. " кастует " .. BlzGetAbilityTooltip(spellId, spell))
end)