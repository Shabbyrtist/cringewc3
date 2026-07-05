require "spells.spell_handler"
require "spells.test"
require "triggers.init"

print('main.lua is here')

local PM = player_manager
InitAllTriggers(pm)

CreateUnit(Player(0), FourCC('H101'), 219.4, -90.4, 293.630)