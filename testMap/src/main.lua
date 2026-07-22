print('main.lua is here')

FogEnable(false)
FogMaskEnable(false)

MDL_DRAGON_ROOST_BRONZE = "buildings\\other\\DragonRoost\\DragonRoost"
MDL_DRAGON_ROOST_BLACK  = "buildings\\other\\DragonBuildingBlack\\DragonBuildingBlack"
MDL_DRAGON_ROOST_GREEN  = "buildings\\other\\DragonBuildingGreen\\DragonBuildingGreen"
MDL_DRAGON_ROOST_RED    = "buildings\\other\\DragonBuilding\\DragonBuilding"
MDL_DRAGON_ROOST_BLUE = "buildings\\other\\DragonBuildingBlue\\DragonBuildingBlue"

local dragonRoosts = {
    MDL_DRAGON_ROOST_BRONZE,
    MDL_DRAGON_ROOST_BLACK,
    MDL_DRAGON_ROOST_GREEN,
    MDL_DRAGON_ROOST_RED,
    MDL_DRAGON_ROOST_BLUE
}

for i = 0, 7, 1 do
    local x = -2696 + 768.0 * i
    local index = (i % #dragonRoosts) + 1
    local eff = AddSpecialEffect(dragonRoosts[index], x, -3072.0)
    BlzSetSpecialEffectMatrixScale(eff, 1, 1, 0.05)
end

SETTINGS_ROUND_NUMBER = 3;
SETTINGS_TRACK_SEGMENTS_NUMBER = 50;
SETTINGS_TRACK_SEGMENTS_LENGTH = 256;
SETTINGS_EXPLOSION_PROGRESS_FACTOR = 0.3;

SFX_FOOD_TIMMY_HELLO = "units\\critters\\villagerkid\\villagercwhat1.wav"
SFX_FOOD_TIMMY_DEATH = "units\\critters\\villagerkid\\villagerchilddeath1.wav"
SFX_FOOD_VILLAGERM_HELLO = "units\\critters\\villagerman\\villagerm3.wav"
SFX_FOOD_VILLAGERM_DEATH = "units\\critters\\villagerman\\villagermaledeath1.wav"
SFX_FOOD_VILLAGERF_HELLO = "units\\critters\\villagerwoman\\villagerf1.wav"
SFX_FOOD_VILLAGERF_DEATH = "units\\human\\sorceress\\sorceressdeath.wav"

MDL_FOOD_TIMMY = "units\\critters\\VillagerKid\\VillagerKid"
MDL_FOOD_VILLAGERM = "units\\critters\\VillagerMan1\\VillagerMan1"
MDL_FOOD_VILLAGERF = "units\\critters\\VillagerWoman\\VillagerWoman"

MDL_MEATEXPLOSION = "Objects\\Spawnmodels\\Human\\HumanLargeDeathExplode\\HumanLargeDeathExplode.mdl"
MDL_MEATMISSILE = "Abilities\\Weapons\\MeatwagonMissile\\MeatwagonMissile.mdl"
MDL_DRAGON_RED = "units\\creeps\\RedDragon\\RedDragon"
MDL_EXPLOSION_TRAIL = "Abilities\\Weapons\\RedDragonBreath\\RedDragonMissile.mdl"

local playerHandler = require("lib.PlayerHandler")
local spellHandler = require("lib.SpellHandler")
local phaseHandler = require("lib.PhaseHandler")
local foodDB = require("lib.FoodDB")
local soundHandler = require("lib.SoundHandler")

foodDB.Init()
playerHandler.Init()
spellHandler.Init()

phaseHandler.Init()
