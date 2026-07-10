print('main.lua is here')

FogEnable(false)
FogMaskEnable(false)

isDebug = true;
SETTINGS_ROUND_NUMBER = 3;
SETTINGS_TRACK_SEGMENTS_NUMBER = 50;
SETTINGS_TRACK_SEGMENTS_LENGTH = 256;

SFX_FOOD_TIMMY_HELLO = "units\\critters\\villagerkid\\villagercwhat1.wav"
SFX_FOOD_TIMMY_DEATH = "units\\critters\\villagerkid\\villagerchilddeath1.wav"
SFX_FOOD_VILLAGERM_HELLO = "units\\critters\\villagerman\\villagerm3.wav"
SFX_FOOD_VILLAGERM_DEATH = "units\\critters\\villagerman\\villagermaledeath1.wav"
SFX_FOOD_VILLAGERF_HELLO = "units\\critters\\villagerwoman\\villagerf1.wav"
SFX_FOOD_VILLAGERF_DEATH = "units\\human\\sorceress\\sorceressdeath.wav"

MDL_MEATEXPLOSION = "Objects\\Spawnmodels\\Human\\HumanLargeDeathExplode\\HumanLargeDeathExplode.mdl"
MDL_MEATMISSILE = "Abilities\\Weapons\\MeatwagonMissile\\MeatwagonMissile.mdl"

local playerHandler = require("lib.PlayerHandler")
local spellHandler = require("lib.SpellHandler")
local phaseHandler = require("lib.PhaseHandler")
local foodDB = require("lib.FoodDB")
local bag = require("lib.Bag")

foodDB.Init()
playerHandler.Init()
spellHandler.Init()
phaseHandler.Init()
