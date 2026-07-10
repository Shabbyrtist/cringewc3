local PlayerHeroHandler = {}
local playerHandler = require("lib.PlayerHandler")

function PlayerHeroHandler.CreateHeroForPlayer(p)
    local scale = 1.5
    local hero = CreateUnit(p, FourCC('rPl1'), 0., 0., 90.)
    
    UnitRemoveAbility(hero, FourCC('Aatk'))
    UnitRemoveAbility(hero, FourCC('Amov'))
    UnitRemoveAbility(hero, FourCC('Aens'))
    UnitRemoveAbility(hero, FourCC('Asal'))
    UnitAddAbility(hero, FourCC('Avul'))
    SetUnitScale(hero, scale, scale, scale)
    
    return hero
end

return PlayerHeroHandler