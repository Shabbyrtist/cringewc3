print('main.lua is here')

isDebug = true;
SETTINGS_ROUND_NUMBER = 3;

require "spells.spell_handler"
require "spells.test"
require "lib.player_manager"
require "game logic.PhaseHandler" 

CreateUnit(Player(0), FourCC('H101'), 219.4, -90.4, 293.630)