print('main.lua is here')

FogEnable(false)
FogMaskEnable(false)

isDebug = true;
SETTINGS_ROUND_NUMBER = 3;
SETTINGS_TRACK_SEGMENTS_NUMBER = 50;
SETTINGS_TRACK_SEGMENTS_LENGTH = 256;

SFX_FOOD_TIMMY_DEATH = "units\\critters\\villagerkid\\villagerchilddeath1.wav"

local playerHandler = require("lib.PlayerHandler")
local spellHandler = require("lib.SpellHandler")
local phaseHandler = require("lib.PhaseHandler")
local foodDB = require("lib.FoodDB")
local bag = require("lib.Bag")

foodDB.Init()
playerHandler.Init()
spellHandler.Init()
phaseHandler.Init()

CreateUnit(Player(0), FourCC('H101'), 219.4, -90.4, 293.630)
