SpellHandler = {}

local spellMap = {}

print('wow!')

function SpellHandler.Register(rawcode, callback)
    spellMap[rawcode] = callback
end

function SpellHandler.Init()
    local trig = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(trig, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    
    TriggerAddAction(trig, function()
        local spellId = GetSpellAbilityId()
        if spellMap[spellId] then
            spellMap[spellId](GetTriggerUnit(), GetSpellTargetUnit())
        end
    end)
end

SpellHandler.Init()