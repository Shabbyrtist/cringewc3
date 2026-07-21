---@diagnostic disable
---@class handle
local handle={}
---@class agent : handle
agent={}
---@class event : agent
event={}
---@class player : agent
player={}
---@class widget : agent
widget={}
---@class unit : widget
unit={}
---@class destructable : widget
destructable={}
---@class item : widget
item={}
---@class ability : agent
ability={}
---@class buff : ability
buff={}
---@class force : agent
force={}
---@class group : agent
group={}
---@class trigger : agent
trigger={}
---@class triggercondition : agent
triggercondition={}
---@class triggeraction : handle
triggeraction={}
---@class timer : agent
timer={}
---@class location : agent
location={}
---@class region : agent
region={}
---@class rect : agent
rect={}
---@class boolexpr : agent
boolexpr={}
---@class sound : agent
sound={}
---@class conditionfunc : boolexpr
conditionfunc={}
---@class filterfunc : boolexpr
filterfunc={}
---@class unitpool : handle
unitpool={}
---@class itempool : handle
itempool={}
---@class race : handle
race={}
---@class alliancetype : handle
alliancetype={}
---@class racepreference : handle
racepreference={}
---@class gamestate : handle
gamestate={}
---@class igamestate : gamestate
igamestate={}
---@class fgamestate : gamestate
fgamestate={}
---@class playerstate : handle
playerstate={}
---@class playerscore : handle
playerscore={}
---@class playergameresult : handle
playergameresult={}
---@class unitstate : handle
unitstate={}
---@class aidifficulty : handle
aidifficulty={}
---@class eventid : handle
eventid={}
---@class gameevent : eventid
gameevent={}
---@class playerevent : eventid
playerevent={}
---@class playerunitevent : eventid
playerunitevent={}
---@class unitevent : eventid
unitevent={}
---@class limitop : eventid
limitop={}
---@class widgetevent : eventid
widgetevent={}
---@class dialogevent : eventid
dialogevent={}
---@class unittype : handle
unittype={}
---@class gamespeed : handle
gamespeed={}
---@class gamedifficulty : handle
gamedifficulty={}
---@class gametype : handle
gametype={}
---@class mapflag : handle
mapflag={}
---@class mapvisibility : handle
mapvisibility={}
---@class mapsetting : handle
mapsetting={}
---@class mapdensity : handle
mapdensity={}
---@class mapcontrol : handle
mapcontrol={}
---@class minimapicon : handle
minimapicon={}
---@class playerslotstate : handle
playerslotstate={}
---@class volumegroup : handle
volumegroup={}
---@class camerafield : handle
camerafield={}
---@class camerasetup : handle
camerasetup={}
---@class playercolor : handle
playercolor={}
---@class placement : handle
placement={}
---@class startlocprio : handle
startlocprio={}
---@class raritycontrol : handle
raritycontrol={}
---@class blendmode : handle
blendmode={}
---@class texmapflags : handle
texmapflags={}
---@class effect : agent
effect={}
---@class effecttype : handle
effecttype={}
---@class weathereffect : handle
weathereffect={}
---@class terraindeformation : handle
terraindeformation={}
---@class fogstate : handle
fogstate={}
---@class fogmodifier : agent
fogmodifier={}
---@class dialog : agent
dialog={}
---@class button : agent
button={}
---@class quest : agent
quest={}
---@class questitem : agent
questitem={}
---@class defeatcondition : agent
defeatcondition={}
---@class timerdialog : agent
timerdialog={}
---@class leaderboard : agent
leaderboard={}
---@class multiboard : agent
multiboard={}
---@class multiboarditem : agent
multiboarditem={}
---@class trackable : agent
trackable={}
---@class gamecache : agent
gamecache={}
---@class version : handle
version={}
---@class itemtype : handle
itemtype={}
---@class texttag : handle
texttag={}
---@class attacktype : handle
attacktype={}
---@class damagetype : handle
damagetype={}
---@class weapontype : handle
weapontype={}
---@class soundtype : handle
soundtype={}
---@class lightning : handle
lightning={}
---@class pathingtype : handle
pathingtype={}
---@class mousebuttontype : handle
mousebuttontype={}
---@class animtype : handle
animtype={}
---@class subanimtype : handle
subanimtype={}
---@class image : handle
image={}
---@class ubersplat : handle
ubersplat={}
---@class hashtable : agent
hashtable={}
---@class framehandle : handle
framehandle={}
---@class originframetype : handle
originframetype={}
---@class framepointtype : handle
framepointtype={}
---@class textaligntype : handle
textaligntype={}
---@class frameeventtype : handle
frameeventtype={}
---@class oskeytype : handle
oskeytype={}
---@class abilityintegerfield : handle
abilityintegerfield={}
---@class abilityrealfield : handle
abilityrealfield={}
---@class abilitybooleanfield : handle
abilitybooleanfield={}
---@class abilitystringfield : handle
abilitystringfield={}
---@class abilityintegerlevelfield : handle
abilityintegerlevelfield={}
---@class abilityreallevelfield : handle
abilityreallevelfield={}
---@class abilitybooleanlevelfield : handle
abilitybooleanlevelfield={}
---@class abilitystringlevelfield : handle
abilitystringlevelfield={}
---@class abilityintegerlevelarrayfield : handle
abilityintegerlevelarrayfield={}
---@class abilityreallevelarrayfield : handle
abilityreallevelarrayfield={}
---@class abilitybooleanlevelarrayfield : handle
abilitybooleanlevelarrayfield={}
---@class abilitystringlevelarrayfield : handle
abilitystringlevelarrayfield={}
---@class unitintegerfield : handle
unitintegerfield={}
---@class unitrealfield : handle
unitrealfield={}
---@class unitbooleanfield : handle
unitbooleanfield={}
---@class unitstringfield : handle
unitstringfield={}
---@class unitweaponintegerfield : handle
unitweaponintegerfield={}
---@class unitweaponrealfield : handle
unitweaponrealfield={}
---@class unitweaponbooleanfield : handle
unitweaponbooleanfield={}
---@class unitweaponstringfield : handle
unitweaponstringfield={}
---@class itemintegerfield : handle
itemintegerfield={}
---@class itemrealfield : handle
itemrealfield={}
---@class itembooleanfield : handle
itembooleanfield={}
---@class itemstringfield : handle
itemstringfield={}
---@class movetype : handle
movetype={}
---@class targetflag : handle
targetflag={}
---@class armortype : handle
armortype={}
---@class heroattribute : handle
heroattribute={}
---@class defensetype : handle
defensetype={}
---@class regentype : handle
regentype={}
---@class unitcategory : handle
unitcategory={}
---@class pathingflag : handle
pathingflag={}
---@class commandbuttoneffect : handle
commandbuttoneffect={}
---@type native
ConvertRace=nil
---@type native
ConvertAllianceType=nil
---@type native
ConvertRacePref=nil
---@type native
ConvertIGameState=nil
---@type native
ConvertFGameState=nil
---@type native
ConvertPlayerState=nil
---@type native
ConvertPlayerScore=nil
---@type native
ConvertPlayerGameResult=nil
---@type native
ConvertUnitState=nil
---@type native
ConvertAIDifficulty=nil
---@type native
ConvertGameEvent=nil
---@type native
ConvertPlayerEvent=nil
---@type native
ConvertPlayerUnitEvent=nil
---@type native
ConvertWidgetEvent=nil
---@type native
ConvertDialogEvent=nil
---@type native
ConvertUnitEvent=nil
---@type native
ConvertLimitOp=nil
---@type native
ConvertUnitType=nil
---@type native
ConvertGameSpeed=nil
---@type native
ConvertPlacement=nil
---@type native
ConvertStartLocPrio=nil
---@type native
ConvertGameDifficulty=nil
---@type native
ConvertGameType=nil
---@type native
ConvertMapFlag=nil
---@type native
ConvertMapVisibility=nil
---@type native
ConvertMapSetting=nil
---@type native
ConvertMapDensity=nil
---@type native
ConvertMapControl=nil
---@type native
ConvertPlayerColor=nil
---@type native
ConvertPlayerSlotState=nil
---@type native
ConvertVolumeGroup=nil
---@type native
ConvertCameraField=nil
---@type native
ConvertBlendMode=nil
---@type native
ConvertRarityControl=nil
---@type native
ConvertTexMapFlags=nil
---@type native
ConvertFogState=nil
---@type native
ConvertEffectType=nil
---@type native
ConvertVersion=nil
---@type native
ConvertItemType=nil
---@type native
ConvertAttackType=nil
---@type native
ConvertDamageType=nil
---@type native
ConvertWeaponType=nil
---@type native
ConvertSoundType=nil
---@type native
ConvertPathingType=nil
---@type native
ConvertMouseButtonType=nil
---@type native
ConvertAnimType=nil
---@type native
ConvertSubAnimType=nil
---@type native
ConvertOriginFrameType=nil
---@type native
ConvertFramePointType=nil
---@type native
ConvertTextAlignType=nil
---@type native
ConvertFrameEventType=nil
---@type native
ConvertOsKeyType=nil
---@type native
ConvertAbilityIntegerField=nil
---@type native
ConvertAbilityRealField=nil
---@type native
ConvertAbilityBooleanField=nil
---@type native
ConvertAbilityStringField=nil
---@type native
ConvertAbilityIntegerLevelField=nil
---@type native
ConvertAbilityRealLevelField=nil
---@type native
ConvertAbilityBooleanLevelField=nil
---@type native
ConvertAbilityStringLevelField=nil
---@type native
ConvertAbilityIntegerLevelArrayField=nil
---@type native
ConvertAbilityRealLevelArrayField=nil
---@type native
ConvertAbilityBooleanLevelArrayField=nil
---@type native
ConvertAbilityStringLevelArrayField=nil
---@type native
ConvertUnitIntegerField=nil
---@type native
ConvertUnitRealField=nil
---@type native
ConvertUnitBooleanField=nil
---@type native
ConvertUnitStringField=nil
---@type native
ConvertUnitWeaponIntegerField=nil
---@type native
ConvertUnitWeaponRealField=nil
---@type native
ConvertUnitWeaponBooleanField=nil
---@type native
ConvertUnitWeaponStringField=nil
---@type native
ConvertItemIntegerField=nil
---@type native
ConvertItemRealField=nil
---@type native
ConvertItemBooleanField=nil
---@type native
ConvertItemStringField=nil
---@type native
ConvertMoveType=nil
---@type native
ConvertTargetFlag=nil
---@type native
ConvertArmorType=nil
---@type native
ConvertHeroAttribute=nil
---@type native
ConvertDefenseType=nil
---@type native
ConvertRegenType=nil
---@type native
ConvertUnitCategory=nil
---@type native
ConvertPathingFlag=nil
---@type native
OrderId=nil
---@type native
OrderId2String=nil
---@type native
UnitId=nil
---@type native
UnitId2String=nil
---@type native
AbilityId=nil
---@type native
AbilityId2String=nil
---@type native
GetObjectName=nil
---@type native
GetBJMaxPlayers=nil
---@type native
GetBJPlayerNeutralVictim=nil
---@type native
GetBJPlayerNeutralExtra=nil
---@type native
GetBJMaxPlayerSlots=nil
---@type native
GetPlayerNeutralPassive=nil
---@type native
GetPlayerNeutralAggressive=nil
---@type boolean
FALSE=nil
---@type boolean
TRUE=nil
---@type integer
JASS_MAX_ARRAY_SIZE=nil
---@type integer
PLAYER_NEUTRAL_PASSIVE=nil
---@type integer
PLAYER_NEUTRAL_AGGRESSIVE=nil
---@type playercolor
PLAYER_COLOR_RED=nil
---@type playercolor
PLAYER_COLOR_BLUE=nil
---@type playercolor
PLAYER_COLOR_CYAN=nil
---@type playercolor
PLAYER_COLOR_PURPLE=nil
---@type playercolor
PLAYER_COLOR_YELLOW=nil
---@type playercolor
PLAYER_COLOR_ORANGE=nil
---@type playercolor
PLAYER_COLOR_GREEN=nil
---@type playercolor
PLAYER_COLOR_PINK=nil
---@type playercolor
PLAYER_COLOR_LIGHT_GRAY=nil
---@type playercolor
PLAYER_COLOR_LIGHT_BLUE=nil
---@type playercolor
PLAYER_COLOR_AQUA=nil
---@type playercolor
PLAYER_COLOR_BROWN=nil
---@type playercolor
PLAYER_COLOR_MAROON=nil
---@type playercolor
PLAYER_COLOR_NAVY=nil
---@type playercolor
PLAYER_COLOR_TURQUOISE=nil
---@type playercolor
PLAYER_COLOR_VIOLET=nil
---@type playercolor
PLAYER_COLOR_WHEAT=nil
---@type playercolor
PLAYER_COLOR_PEACH=nil
---@type playercolor
PLAYER_COLOR_MINT=nil
---@type playercolor
PLAYER_COLOR_LAVENDER=nil
---@type playercolor
PLAYER_COLOR_COAL=nil
---@type playercolor
PLAYER_COLOR_SNOW=nil
---@type playercolor
PLAYER_COLOR_EMERALD=nil
---@type playercolor
PLAYER_COLOR_PEANUT=nil
---@type race
RACE_HUMAN=nil
---@type race
RACE_ORC=nil
---@type race
RACE_UNDEAD=nil
---@type race
RACE_NIGHTELF=nil
---@type race
RACE_DEMON=nil
---@type race
RACE_OTHER=nil
---@type playergameresult
PLAYER_GAME_RESULT_VICTORY=nil
---@type playergameresult
PLAYER_GAME_RESULT_DEFEAT=nil
---@type playergameresult
PLAYER_GAME_RESULT_TIE=nil
---@type playergameresult
PLAYER_GAME_RESULT_NEUTRAL=nil
---@type alliancetype
ALLIANCE_PASSIVE=nil
---@type alliancetype
ALLIANCE_HELP_REQUEST=nil
---@type alliancetype
ALLIANCE_HELP_RESPONSE=nil
---@type alliancetype
ALLIANCE_SHARED_XP=nil
---@type alliancetype
ALLIANCE_SHARED_SPELLS=nil
---@type alliancetype
ALLIANCE_SHARED_VISION=nil
---@type alliancetype
ALLIANCE_SHARED_CONTROL=nil
---@type alliancetype
ALLIANCE_SHARED_ADVANCED_CONTROL=nil
---@type alliancetype
ALLIANCE_RESCUABLE=nil
---@type alliancetype
ALLIANCE_SHARED_VISION_FORCED=nil
---@type version
VERSION_REIGN_OF_CHAOS=nil
---@type version
VERSION_FROZEN_THRONE=nil
---@type attacktype
ATTACK_TYPE_NORMAL=nil
---@type attacktype
ATTACK_TYPE_MELEE=nil
---@type attacktype
ATTACK_TYPE_PIERCE=nil
---@type attacktype
ATTACK_TYPE_SIEGE=nil
---@type attacktype
ATTACK_TYPE_MAGIC=nil
---@type attacktype
ATTACK_TYPE_CHAOS=nil
---@type attacktype
ATTACK_TYPE_HERO=nil
---@type damagetype
DAMAGE_TYPE_UNKNOWN=nil
---@type damagetype
DAMAGE_TYPE_NORMAL=nil
---@type damagetype
DAMAGE_TYPE_ENHANCED=nil
---@type damagetype
DAMAGE_TYPE_FIRE=nil
---@type damagetype
DAMAGE_TYPE_COLD=nil
---@type damagetype
DAMAGE_TYPE_LIGHTNING=nil
---@type damagetype
DAMAGE_TYPE_POISON=nil
---@type damagetype
DAMAGE_TYPE_DISEASE=nil
---@type damagetype
DAMAGE_TYPE_DIVINE=nil
---@type damagetype
DAMAGE_TYPE_MAGIC=nil
---@type damagetype
DAMAGE_TYPE_SONIC=nil
---@type damagetype
DAMAGE_TYPE_ACID=nil
---@type damagetype
DAMAGE_TYPE_FORCE=nil
---@type damagetype
DAMAGE_TYPE_DEATH=nil
---@type damagetype
DAMAGE_TYPE_MIND=nil
---@type damagetype
DAMAGE_TYPE_PLANT=nil
---@type damagetype
DAMAGE_TYPE_DEFENSIVE=nil
---@type damagetype
DAMAGE_TYPE_DEMOLITION=nil
---@type damagetype
DAMAGE_TYPE_SLOW_POISON=nil
---@type damagetype
DAMAGE_TYPE_SPIRIT_LINK=nil
---@type damagetype
DAMAGE_TYPE_SHADOW_STRIKE=nil
---@type damagetype
DAMAGE_TYPE_UNIVERSAL=nil
---@type weapontype
WEAPON_TYPE_WHOKNOWS=nil
---@type weapontype
WEAPON_TYPE_METAL_LIGHT_CHOP=nil
---@type weapontype
WEAPON_TYPE_METAL_MEDIUM_CHOP=nil
---@type weapontype
WEAPON_TYPE_METAL_HEAVY_CHOP=nil
---@type weapontype
WEAPON_TYPE_METAL_LIGHT_SLICE=nil
---@type weapontype
WEAPON_TYPE_METAL_MEDIUM_SLICE=nil
---@type weapontype
WEAPON_TYPE_METAL_HEAVY_SLICE=nil
---@type weapontype
WEAPON_TYPE_METAL_MEDIUM_BASH=nil
---@type weapontype
WEAPON_TYPE_METAL_HEAVY_BASH=nil
---@type weapontype
WEAPON_TYPE_METAL_MEDIUM_STAB=nil
---@type weapontype
WEAPON_TYPE_METAL_HEAVY_STAB=nil
---@type weapontype
WEAPON_TYPE_WOOD_LIGHT_SLICE=nil
---@type weapontype
WEAPON_TYPE_WOOD_MEDIUM_SLICE=nil
---@type weapontype
WEAPON_TYPE_WOOD_HEAVY_SLICE=nil
---@type weapontype
WEAPON_TYPE_WOOD_LIGHT_BASH=nil
---@type weapontype
WEAPON_TYPE_WOOD_MEDIUM_BASH=nil
---@type weapontype
WEAPON_TYPE_WOOD_HEAVY_BASH=nil
---@type weapontype
WEAPON_TYPE_WOOD_LIGHT_STAB=nil
---@type weapontype
WEAPON_TYPE_WOOD_MEDIUM_STAB=nil
---@type weapontype
WEAPON_TYPE_CLAW_LIGHT_SLICE=nil
---@type weapontype
WEAPON_TYPE_CLAW_MEDIUM_SLICE=nil
---@type weapontype
WEAPON_TYPE_CLAW_HEAVY_SLICE=nil
---@type weapontype
WEAPON_TYPE_AXE_MEDIUM_CHOP=nil
---@type weapontype
WEAPON_TYPE_ROCK_HEAVY_BASH=nil
---@type pathingtype
PATHING_TYPE_ANY=nil
---@type pathingtype
PATHING_TYPE_WALKABILITY=nil
---@type pathingtype
PATHING_TYPE_FLYABILITY=nil
---@type pathingtype
PATHING_TYPE_BUILDABILITY=nil
---@type pathingtype
PATHING_TYPE_PEONHARVESTPATHING=nil
---@type pathingtype
PATHING_TYPE_BLIGHTPATHING=nil
---@type pathingtype
PATHING_TYPE_FLOATABILITY=nil
---@type pathingtype
PATHING_TYPE_AMPHIBIOUSPATHING=nil
---@type mousebuttontype
MOUSE_BUTTON_TYPE_LEFT=nil
---@type mousebuttontype
MOUSE_BUTTON_TYPE_MIDDLE=nil
---@type mousebuttontype
MOUSE_BUTTON_TYPE_RIGHT=nil
---@type animtype
ANIM_TYPE_BIRTH=nil
---@type animtype
ANIM_TYPE_DEATH=nil
---@type animtype
ANIM_TYPE_DECAY=nil
---@type animtype
ANIM_TYPE_DISSIPATE=nil
---@type animtype
ANIM_TYPE_STAND=nil
---@type animtype
ANIM_TYPE_WALK=nil
---@type animtype
ANIM_TYPE_ATTACK=nil
---@type animtype
ANIM_TYPE_MORPH=nil
---@type animtype
ANIM_TYPE_SLEEP=nil
---@type animtype
ANIM_TYPE_SPELL=nil
---@type animtype
ANIM_TYPE_PORTRAIT=nil
---@type subanimtype
SUBANIM_TYPE_ROOTED=nil
---@type subanimtype
SUBANIM_TYPE_ALTERNATE_EX=nil
---@type subanimtype
SUBANIM_TYPE_LOOPING=nil
---@type subanimtype
SUBANIM_TYPE_SLAM=nil
---@type subanimtype
SUBANIM_TYPE_THROW=nil
---@type subanimtype
SUBANIM_TYPE_SPIKED=nil
---@type subanimtype
SUBANIM_TYPE_FAST=nil
---@type subanimtype
SUBANIM_TYPE_SPIN=nil
---@type subanimtype
SUBANIM_TYPE_READY=nil
---@type subanimtype
SUBANIM_TYPE_CHANNEL=nil
---@type subanimtype
SUBANIM_TYPE_DEFEND=nil
---@type subanimtype
SUBANIM_TYPE_VICTORY=nil
---@type subanimtype
SUBANIM_TYPE_TURN=nil
---@type subanimtype
SUBANIM_TYPE_LEFT=nil
---@type subanimtype
SUBANIM_TYPE_RIGHT=nil
---@type subanimtype
SUBANIM_TYPE_FIRE=nil
---@type subanimtype
SUBANIM_TYPE_FLESH=nil
---@type subanimtype
SUBANIM_TYPE_HIT=nil
---@type subanimtype
SUBANIM_TYPE_WOUNDED=nil
---@type subanimtype
SUBANIM_TYPE_LIGHT=nil
---@type subanimtype
SUBANIM_TYPE_MODERATE=nil
---@type subanimtype
SUBANIM_TYPE_SEVERE=nil
---@type subanimtype
SUBANIM_TYPE_CRITICAL=nil
---@type subanimtype
SUBANIM_TYPE_COMPLETE=nil
---@type subanimtype
SUBANIM_TYPE_GOLD=nil
---@type subanimtype
SUBANIM_TYPE_LUMBER=nil
---@type subanimtype
SUBANIM_TYPE_WORK=nil
---@type subanimtype
SUBANIM_TYPE_TALK=nil
---@type subanimtype
SUBANIM_TYPE_FIRST=nil
---@type subanimtype
SUBANIM_TYPE_SECOND=nil
---@type subanimtype
SUBANIM_TYPE_THIRD=nil
---@type subanimtype
SUBANIM_TYPE_FOURTH=nil
---@type subanimtype
SUBANIM_TYPE_FIFTH=nil
---@type subanimtype
SUBANIM_TYPE_ONE=nil
---@type subanimtype
SUBANIM_TYPE_TWO=nil
---@type subanimtype
SUBANIM_TYPE_THREE=nil
---@type subanimtype
SUBANIM_TYPE_FOUR=nil
---@type subanimtype
SUBANIM_TYPE_FIVE=nil
---@type subanimtype
SUBANIM_TYPE_SMALL=nil
---@type subanimtype
SUBANIM_TYPE_MEDIUM=nil
---@type subanimtype
SUBANIM_TYPE_LARGE=nil
---@type subanimtype
SUBANIM_TYPE_UPGRADE=nil
---@type subanimtype
SUBANIM_TYPE_DRAIN=nil
---@type subanimtype
SUBANIM_TYPE_FILL=nil
---@type subanimtype
SUBANIM_TYPE_CHAINLIGHTNING=nil
---@type subanimtype
SUBANIM_TYPE_EATTREE=nil
---@type subanimtype
SUBANIM_TYPE_PUKE=nil
---@type subanimtype
SUBANIM_TYPE_FLAIL=nil
---@type subanimtype
SUBANIM_TYPE_OFF=nil
---@type subanimtype
SUBANIM_TYPE_SWIM=nil
---@type subanimtype
SUBANIM_TYPE_ENTANGLE=nil
---@type subanimtype
SUBANIM_TYPE_BERSERK=nil
---@type racepreference
RACE_PREF_HUMAN=nil
---@type racepreference
RACE_PREF_ORC=nil
---@type racepreference
RACE_PREF_NIGHTELF=nil
---@type racepreference
RACE_PREF_UNDEAD=nil
---@type racepreference
RACE_PREF_DEMON=nil
---@type racepreference
RACE_PREF_RANDOM=nil
---@type racepreference
RACE_PREF_USER_SELECTABLE=nil
---@type mapcontrol
MAP_CONTROL_USER=nil
---@type mapcontrol
MAP_CONTROL_COMPUTER=nil
---@type mapcontrol
MAP_CONTROL_RESCUABLE=nil
---@type mapcontrol
MAP_CONTROL_NEUTRAL=nil
---@type mapcontrol
MAP_CONTROL_CREEP=nil
---@type mapcontrol
MAP_CONTROL_NONE=nil
---@type gametype
GAME_TYPE_MELEE=nil
---@type gametype
GAME_TYPE_FFA=nil
---@type gametype
GAME_TYPE_USE_MAP_SETTINGS=nil
---@type gametype
GAME_TYPE_BLIZ=nil
---@type gametype
GAME_TYPE_ONE_ON_ONE=nil
---@type gametype
GAME_TYPE_TWO_TEAM_PLAY=nil
---@type gametype
GAME_TYPE_THREE_TEAM_PLAY=nil
---@type gametype
GAME_TYPE_FOUR_TEAM_PLAY=nil
---@type mapflag
MAP_FOG_HIDE_TERRAIN=nil
---@type mapflag
MAP_FOG_MAP_EXPLORED=nil
---@type mapflag
MAP_FOG_ALWAYS_VISIBLE=nil
---@type mapflag
MAP_USE_HANDICAPS=nil
---@type mapflag
MAP_OBSERVERS=nil
---@type mapflag
MAP_OBSERVERS_ON_DEATH=nil
---@type mapflag
MAP_FIXED_COLORS=nil
---@type mapflag
MAP_LOCK_RESOURCE_TRADING=nil
---@type mapflag
MAP_RESOURCE_TRADING_ALLIES_ONLY=nil
---@type mapflag
MAP_LOCK_ALLIANCE_CHANGES=nil
---@type mapflag
MAP_ALLIANCE_CHANGES_HIDDEN=nil
---@type mapflag
MAP_CHEATS=nil
---@type mapflag
MAP_CHEATS_HIDDEN=nil
---@type mapflag
MAP_LOCK_SPEED=nil
---@type mapflag
MAP_LOCK_RANDOM_SEED=nil
---@type mapflag
MAP_SHARED_ADVANCED_CONTROL=nil
---@type mapflag
MAP_RANDOM_HERO=nil
---@type mapflag
MAP_RANDOM_RACES=nil
---@type mapflag
MAP_RELOADED=nil
---@type placement
MAP_PLACEMENT_RANDOM=nil
---@type placement
MAP_PLACEMENT_FIXED=nil
---@type placement
MAP_PLACEMENT_USE_MAP_SETTINGS=nil
---@type placement
MAP_PLACEMENT_TEAMS_TOGETHER=nil
---@type startlocprio
MAP_LOC_PRIO_LOW=nil
---@type startlocprio
MAP_LOC_PRIO_HIGH=nil
---@type startlocprio
MAP_LOC_PRIO_NOT=nil
---@type mapdensity
MAP_DENSITY_NONE=nil
---@type mapdensity
MAP_DENSITY_LIGHT=nil
---@type mapdensity
MAP_DENSITY_MEDIUM=nil
---@type mapdensity
MAP_DENSITY_HEAVY=nil
---@type gamedifficulty
MAP_DIFFICULTY_EASY=nil
---@type gamedifficulty
MAP_DIFFICULTY_NORMAL=nil
---@type gamedifficulty
MAP_DIFFICULTY_HARD=nil
---@type gamedifficulty
MAP_DIFFICULTY_INSANE=nil
---@type gamespeed
MAP_SPEED_SLOWEST=nil
---@type gamespeed
MAP_SPEED_SLOW=nil
---@type gamespeed
MAP_SPEED_NORMAL=nil
---@type gamespeed
MAP_SPEED_FAST=nil
---@type gamespeed
MAP_SPEED_FASTEST=nil
---@type playerslotstate
PLAYER_SLOT_STATE_EMPTY=nil
---@type playerslotstate
PLAYER_SLOT_STATE_PLAYING=nil
---@type playerslotstate
PLAYER_SLOT_STATE_LEFT=nil
---@type volumegroup
SOUND_VOLUMEGROUP_UNITMOVEMENT=nil
---@type volumegroup
SOUND_VOLUMEGROUP_UNITSOUNDS=nil
---@type volumegroup
SOUND_VOLUMEGROUP_COMBAT=nil
---@type volumegroup
SOUND_VOLUMEGROUP_SPELLS=nil
---@type volumegroup
SOUND_VOLUMEGROUP_UI=nil
---@type volumegroup
SOUND_VOLUMEGROUP_MUSIC=nil
---@type volumegroup
SOUND_VOLUMEGROUP_AMBIENTSOUNDS=nil
---@type volumegroup
SOUND_VOLUMEGROUP_FIRE=nil
---@type volumegroup
SOUND_VOLUMEGROUP_CINEMATIC_GENERAL=nil
---@type volumegroup
SOUND_VOLUMEGROUP_CINEMATIC_AMBIENT=nil
---@type volumegroup
SOUND_VOLUMEGROUP_CINEMATIC_MUSIC=nil
---@type volumegroup
SOUND_VOLUMEGROUP_CINEMATIC_DIALOGUE=nil
---@type volumegroup
SOUND_VOLUMEGROUP_CINEMATIC_SOUND_EFFECTS_1=nil
---@type volumegroup
SOUND_VOLUMEGROUP_CINEMATIC_SOUND_EFFECTS_2=nil
---@type volumegroup
SOUND_VOLUMEGROUP_CINEMATIC_SOUND_EFFECTS_3=nil
---@type igamestate
GAME_STATE_DIVINE_INTERVENTION=nil
---@type igamestate
GAME_STATE_DISCONNECTED=nil
---@type fgamestate
GAME_STATE_TIME_OF_DAY=nil
---@type playerstate
PLAYER_STATE_GAME_RESULT=nil
---@type playerstate
PLAYER_STATE_RESOURCE_GOLD=nil
---@type playerstate
PLAYER_STATE_RESOURCE_LUMBER=nil
---@type playerstate
PLAYER_STATE_RESOURCE_HERO_TOKENS=nil
---@type playerstate
PLAYER_STATE_RESOURCE_FOOD_CAP=nil
---@type playerstate
PLAYER_STATE_RESOURCE_FOOD_USED=nil
---@type playerstate
PLAYER_STATE_FOOD_CAP_CEILING=nil
---@type playerstate
PLAYER_STATE_GIVES_BOUNTY=nil
---@type playerstate
PLAYER_STATE_ALLIED_VICTORY=nil
---@type playerstate
PLAYER_STATE_PLACED=nil
---@type playerstate
PLAYER_STATE_OBSERVER_ON_DEATH=nil
---@type playerstate
PLAYER_STATE_OBSERVER=nil
---@type playerstate
PLAYER_STATE_UNFOLLOWABLE=nil
---@type playerstate
PLAYER_STATE_GOLD_UPKEEP_RATE=nil
---@type playerstate
PLAYER_STATE_LUMBER_UPKEEP_RATE=nil
---@type playerstate
PLAYER_STATE_GOLD_GATHERED=nil
---@type playerstate
PLAYER_STATE_LUMBER_GATHERED=nil
---@type playerstate
PLAYER_STATE_NO_CREEP_SLEEP=nil
---@type unitstate
UNIT_STATE_LIFE=nil
---@type unitstate
UNIT_STATE_MAX_LIFE=nil
---@type unitstate
UNIT_STATE_MANA=nil
---@type unitstate
UNIT_STATE_MAX_MANA=nil
---@type aidifficulty
AI_DIFFICULTY_NEWBIE=nil
---@type aidifficulty
AI_DIFFICULTY_NORMAL=nil
---@type aidifficulty
AI_DIFFICULTY_INSANE=nil
---@type playerscore
PLAYER_SCORE_UNITS_TRAINED=nil
---@type playerscore
PLAYER_SCORE_UNITS_KILLED=nil
---@type playerscore
PLAYER_SCORE_STRUCT_BUILT=nil
---@type playerscore
PLAYER_SCORE_STRUCT_RAZED=nil
---@type playerscore
PLAYER_SCORE_TECH_PERCENT=nil
---@type playerscore
PLAYER_SCORE_FOOD_MAXPROD=nil
---@type playerscore
PLAYER_SCORE_FOOD_MAXUSED=nil
---@type playerscore
PLAYER_SCORE_HEROES_KILLED=nil
---@type playerscore
PLAYER_SCORE_ITEMS_GAINED=nil
---@type playerscore
PLAYER_SCORE_MERCS_HIRED=nil
---@type playerscore
PLAYER_SCORE_GOLD_MINED_TOTAL=nil
---@type playerscore
PLAYER_SCORE_GOLD_MINED_UPKEEP=nil
---@type playerscore
PLAYER_SCORE_GOLD_LOST_UPKEEP=nil
---@type playerscore
PLAYER_SCORE_GOLD_LOST_TAX=nil
---@type playerscore
PLAYER_SCORE_GOLD_GIVEN=nil
---@type playerscore
PLAYER_SCORE_GOLD_RECEIVED=nil
---@type playerscore
PLAYER_SCORE_LUMBER_TOTAL=nil
---@type playerscore
PLAYER_SCORE_LUMBER_LOST_UPKEEP=nil
---@type playerscore
PLAYER_SCORE_LUMBER_LOST_TAX=nil
---@type playerscore
PLAYER_SCORE_LUMBER_GIVEN=nil
---@type playerscore
PLAYER_SCORE_LUMBER_RECEIVED=nil
---@type playerscore
PLAYER_SCORE_UNIT_TOTAL=nil
---@type playerscore
PLAYER_SCORE_HERO_TOTAL=nil
---@type playerscore
PLAYER_SCORE_RESOURCE_TOTAL=nil
---@type playerscore
PLAYER_SCORE_TOTAL=nil
---@type gameevent
EVENT_GAME_VICTORY=nil
---@type gameevent
EVENT_GAME_END_LEVEL=nil
---@type gameevent
EVENT_GAME_VARIABLE_LIMIT=nil
---@type gameevent
EVENT_GAME_STATE_LIMIT=nil
---@type gameevent
EVENT_GAME_TIMER_EXPIRED=nil
---@type gameevent
EVENT_GAME_ENTER_REGION=nil
---@type gameevent
EVENT_GAME_LEAVE_REGION=nil
---@type gameevent
EVENT_GAME_TRACKABLE_HIT=nil
---@type gameevent
EVENT_GAME_TRACKABLE_TRACK=nil
---@type gameevent
EVENT_GAME_SHOW_SKILL=nil
---@type gameevent
EVENT_GAME_BUILD_SUBMENU=nil
---@type playerevent
EVENT_PLAYER_STATE_LIMIT=nil
---@type playerevent
EVENT_PLAYER_ALLIANCE_CHANGED=nil
---@type playerevent
EVENT_PLAYER_DEFEAT=nil
---@type playerevent
EVENT_PLAYER_VICTORY=nil
---@type playerevent
EVENT_PLAYER_LEAVE=nil
---@type playerevent
EVENT_PLAYER_CHAT=nil
---@type playerevent
EVENT_PLAYER_END_CINEMATIC=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_ATTACKED=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_RESCUED=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_DEATH=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_DECAY=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_DETECTED=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_HIDDEN=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_SELECTED=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_DESELECTED=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_CONSTRUCT_START=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_CONSTRUCT_FINISH=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_UPGRADE_START=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_UPGRADE_CANCEL=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_UPGRADE_FINISH=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_TRAIN_START=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_TRAIN_CANCEL=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_TRAIN_FINISH=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_RESEARCH_START=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_RESEARCH_CANCEL=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_RESEARCH_FINISH=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_ISSUED_ORDER=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER=nil
---@type playerunitevent
EVENT_PLAYER_HERO_LEVEL=nil
---@type playerunitevent
EVENT_PLAYER_HERO_SKILL=nil
---@type playerunitevent
EVENT_PLAYER_HERO_REVIVABLE=nil
---@type playerunitevent
EVENT_PLAYER_HERO_REVIVE_START=nil
---@type playerunitevent
EVENT_PLAYER_HERO_REVIVE_CANCEL=nil
---@type playerunitevent
EVENT_PLAYER_HERO_REVIVE_FINISH=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_SUMMON=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_DROP_ITEM=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_PICKUP_ITEM=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_USE_ITEM=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_LOADED=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_DAMAGED=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_DAMAGING=nil
---@type unitevent
EVENT_UNIT_DAMAGED=nil
---@type unitevent
EVENT_UNIT_DAMAGING=nil
---@type unitevent
EVENT_UNIT_DEATH=nil
---@type unitevent
EVENT_UNIT_DECAY=nil
---@type unitevent
EVENT_UNIT_DETECTED=nil
---@type unitevent
EVENT_UNIT_HIDDEN=nil
---@type unitevent
EVENT_UNIT_SELECTED=nil
---@type unitevent
EVENT_UNIT_DESELECTED=nil
---@type unitevent
EVENT_UNIT_STATE_LIMIT=nil
---@type unitevent
EVENT_UNIT_ACQUIRED_TARGET=nil
---@type unitevent
EVENT_UNIT_TARGET_IN_RANGE=nil
---@type unitevent
EVENT_UNIT_ATTACKED=nil
---@type unitevent
EVENT_UNIT_RESCUED=nil
---@type unitevent
EVENT_UNIT_CONSTRUCT_CANCEL=nil
---@type unitevent
EVENT_UNIT_CONSTRUCT_FINISH=nil
---@type unitevent
EVENT_UNIT_UPGRADE_START=nil
---@type unitevent
EVENT_UNIT_UPGRADE_CANCEL=nil
---@type unitevent
EVENT_UNIT_UPGRADE_FINISH=nil
---@type unitevent
EVENT_UNIT_TRAIN_START=nil
---@type unitevent
EVENT_UNIT_TRAIN_CANCEL=nil
---@type unitevent
EVENT_UNIT_TRAIN_FINISH=nil
---@type unitevent
EVENT_UNIT_RESEARCH_START=nil
---@type unitevent
EVENT_UNIT_RESEARCH_CANCEL=nil
---@type unitevent
EVENT_UNIT_RESEARCH_FINISH=nil
---@type unitevent
EVENT_UNIT_ISSUED_ORDER=nil
---@type unitevent
EVENT_UNIT_ISSUED_POINT_ORDER=nil
---@type unitevent
EVENT_UNIT_ISSUED_TARGET_ORDER=nil
---@type unitevent
EVENT_UNIT_HERO_LEVEL=nil
---@type unitevent
EVENT_UNIT_HERO_SKILL=nil
---@type unitevent
EVENT_UNIT_HERO_REVIVABLE=nil
---@type unitevent
EVENT_UNIT_HERO_REVIVE_START=nil
---@type unitevent
EVENT_UNIT_HERO_REVIVE_CANCEL=nil
---@type unitevent
EVENT_UNIT_HERO_REVIVE_FINISH=nil
---@type unitevent
EVENT_UNIT_SUMMON=nil
---@type unitevent
EVENT_UNIT_DROP_ITEM=nil
---@type unitevent
EVENT_UNIT_PICKUP_ITEM=nil
---@type unitevent
EVENT_UNIT_USE_ITEM=nil
---@type unitevent
EVENT_UNIT_LOADED=nil
---@type widgetevent
EVENT_WIDGET_DEATH=nil
---@type dialogevent
EVENT_DIALOG_BUTTON_CLICK=nil
---@type dialogevent
EVENT_DIALOG_CLICK=nil
---@type gameevent
EVENT_GAME_LOADED=nil
---@type gameevent
EVENT_GAME_TOURNAMENT_FINISH_SOON=nil
---@type gameevent
EVENT_GAME_TOURNAMENT_FINISH_NOW=nil
---@type gameevent
EVENT_GAME_SAVE=nil
---@type gameevent
EVENT_GAME_CUSTOM_UI_FRAME=nil
---@type playerevent
EVENT_PLAYER_ARROW_LEFT_DOWN=nil
---@type playerevent
EVENT_PLAYER_ARROW_LEFT_UP=nil
---@type playerevent
EVENT_PLAYER_ARROW_RIGHT_DOWN=nil
---@type playerevent
EVENT_PLAYER_ARROW_RIGHT_UP=nil
---@type playerevent
EVENT_PLAYER_ARROW_DOWN_DOWN=nil
---@type playerevent
EVENT_PLAYER_ARROW_DOWN_UP=nil
---@type playerevent
EVENT_PLAYER_ARROW_UP_DOWN=nil
---@type playerevent
EVENT_PLAYER_ARROW_UP_UP=nil
---@type playerevent
EVENT_PLAYER_MOUSE_DOWN=nil
---@type playerevent
EVENT_PLAYER_MOUSE_UP=nil
---@type playerevent
EVENT_PLAYER_MOUSE_MOVE=nil
---@type playerevent
EVENT_PLAYER_SYNC_DATA=nil
---@type playerevent
EVENT_PLAYER_KEY=nil
---@type playerevent
EVENT_PLAYER_KEY_DOWN=nil
---@type playerevent
EVENT_PLAYER_KEY_UP=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_SELL=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_CHANGE_OWNER=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_SELL_ITEM=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_SPELL_CHANNEL=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_SPELL_CAST=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_SPELL_EFFECT=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_SPELL_FINISH=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_SPELL_ENDCAST=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_PAWN_ITEM=nil
---@type playerunitevent
EVENT_PLAYER_UNIT_STACK_ITEM=nil
---@type unitevent
EVENT_UNIT_SELL=nil
---@type unitevent
EVENT_UNIT_CHANGE_OWNER=nil
---@type unitevent
EVENT_UNIT_SELL_ITEM=nil
---@type unitevent
EVENT_UNIT_SPELL_CHANNEL=nil
---@type unitevent
EVENT_UNIT_SPELL_CAST=nil
---@type unitevent
EVENT_UNIT_SPELL_EFFECT=nil
---@type unitevent
EVENT_UNIT_SPELL_FINISH=nil
---@type unitevent
EVENT_UNIT_SPELL_ENDCAST=nil
---@type unitevent
EVENT_UNIT_PAWN_ITEM=nil
---@type unitevent
EVENT_UNIT_STACK_ITEM=nil
---@type limitop
LESS_THAN=nil
---@type limitop
LESS_THAN_OR_EQUAL=nil
---@type limitop
EQUAL=nil
---@type limitop
GREATER_THAN_OR_EQUAL=nil
---@type limitop
GREATER_THAN=nil
---@type limitop
NOT_EQUAL=nil
---@type unittype
UNIT_TYPE_HERO=nil
---@type unittype
UNIT_TYPE_DEAD=nil
---@type unittype
UNIT_TYPE_STRUCTURE=nil
---@type unittype
UNIT_TYPE_FLYING=nil
---@type unittype
UNIT_TYPE_GROUND=nil
---@type unittype
UNIT_TYPE_ATTACKS_FLYING=nil
---@type unittype
UNIT_TYPE_ATTACKS_GROUND=nil
---@type unittype
UNIT_TYPE_MELEE_ATTACKER=nil
---@type unittype
UNIT_TYPE_RANGED_ATTACKER=nil
---@type unittype
UNIT_TYPE_GIANT=nil
---@type unittype
UNIT_TYPE_SUMMONED=nil
---@type unittype
UNIT_TYPE_STUNNED=nil
---@type unittype
UNIT_TYPE_PLAGUED=nil
---@type unittype
UNIT_TYPE_SNARED=nil
---@type unittype
UNIT_TYPE_UNDEAD=nil
---@type unittype
UNIT_TYPE_MECHANICAL=nil
---@type unittype
UNIT_TYPE_PEON=nil
---@type unittype
UNIT_TYPE_SAPPER=nil
---@type unittype
UNIT_TYPE_TOWNHALL=nil
---@type unittype
UNIT_TYPE_ANCIENT=nil
---@type unittype
UNIT_TYPE_TAUREN=nil
---@type unittype
UNIT_TYPE_POISONED=nil
---@type unittype
UNIT_TYPE_POLYMORPHED=nil
---@type unittype
UNIT_TYPE_SLEEPING=nil
---@type unittype
UNIT_TYPE_RESISTANT=nil
---@type unittype
UNIT_TYPE_ETHEREAL=nil
---@type unittype
UNIT_TYPE_MAGIC_IMMUNE=nil
---@type itemtype
ITEM_TYPE_PERMANENT=nil
---@type itemtype
ITEM_TYPE_CHARGED=nil
---@type itemtype
ITEM_TYPE_POWERUP=nil
---@type itemtype
ITEM_TYPE_ARTIFACT=nil
---@type itemtype
ITEM_TYPE_PURCHASABLE=nil
---@type itemtype
ITEM_TYPE_CAMPAIGN=nil
---@type itemtype
ITEM_TYPE_MISCELLANEOUS=nil
---@type itemtype
ITEM_TYPE_UNKNOWN=nil
---@type itemtype
ITEM_TYPE_ANY=nil
---@type itemtype
ITEM_TYPE_TOME=nil
---@type camerafield
CAMERA_FIELD_TARGET_DISTANCE=nil
---@type camerafield
CAMERA_FIELD_FARZ=nil
---@type camerafield
CAMERA_FIELD_ANGLE_OF_ATTACK=nil
---@type camerafield
CAMERA_FIELD_FIELD_OF_VIEW=nil
---@type camerafield
CAMERA_FIELD_ROLL=nil
---@type camerafield
CAMERA_FIELD_ROTATION=nil
---@type camerafield
CAMERA_FIELD_ZOFFSET=nil
---@type camerafield
CAMERA_FIELD_NEARZ=nil
---@type camerafield
CAMERA_FIELD_LOCAL_PITCH=nil
---@type camerafield
CAMERA_FIELD_LOCAL_YAW=nil
---@type camerafield
CAMERA_FIELD_LOCAL_ROLL=nil
---@type blendmode
BLEND_MODE_NONE=nil
---@type blendmode
BLEND_MODE_DONT_CARE=nil
---@type blendmode
BLEND_MODE_KEYALPHA=nil
---@type blendmode
BLEND_MODE_BLEND=nil
---@type blendmode
BLEND_MODE_ADDITIVE=nil
---@type blendmode
BLEND_MODE_MODULATE=nil
---@type blendmode
BLEND_MODE_MODULATE_2X=nil
---@type raritycontrol
RARITY_FREQUENT=nil
---@type raritycontrol
RARITY_RARE=nil
---@type texmapflags
TEXMAP_FLAG_NONE=nil
---@type texmapflags
TEXMAP_FLAG_WRAP_U=nil
---@type texmapflags
TEXMAP_FLAG_WRAP_V=nil
---@type texmapflags
TEXMAP_FLAG_WRAP_UV=nil
---@type fogstate
FOG_OF_WAR_MASKED=nil
---@type fogstate
FOG_OF_WAR_FOGGED=nil
---@type fogstate
FOG_OF_WAR_VISIBLE=nil
---@type integer
CAMERA_MARGIN_LEFT=nil
---@type integer
CAMERA_MARGIN_RIGHT=nil
---@type integer
CAMERA_MARGIN_TOP=nil
---@type integer
CAMERA_MARGIN_BOTTOM=nil
---@type effecttype
EFFECT_TYPE_EFFECT=nil
---@type effecttype
EFFECT_TYPE_TARGET=nil
---@type effecttype
EFFECT_TYPE_CASTER=nil
---@type effecttype
EFFECT_TYPE_SPECIAL=nil
---@type effecttype
EFFECT_TYPE_AREA_EFFECT=nil
---@type effecttype
EFFECT_TYPE_MISSILE=nil
---@type effecttype
EFFECT_TYPE_LIGHTNING=nil
---@type soundtype
SOUND_TYPE_EFFECT=nil
---@type soundtype
SOUND_TYPE_EFFECT_LOOPED=nil
---@type originframetype
ORIGIN_FRAME_GAME_UI=nil
---@type originframetype
ORIGIN_FRAME_COMMAND_BUTTON=nil
---@type originframetype
ORIGIN_FRAME_HERO_BAR=nil
---@type originframetype
ORIGIN_FRAME_HERO_BUTTON=nil
---@type originframetype
ORIGIN_FRAME_HERO_HP_BAR=nil
---@type originframetype
ORIGIN_FRAME_HERO_MANA_BAR=nil
---@type originframetype
ORIGIN_FRAME_HERO_BUTTON_INDICATOR=nil
---@type originframetype
ORIGIN_FRAME_ITEM_BUTTON=nil
---@type originframetype
ORIGIN_FRAME_MINIMAP=nil
---@type originframetype
ORIGIN_FRAME_MINIMAP_BUTTON=nil
---@type originframetype
ORIGIN_FRAME_SYSTEM_BUTTON=nil
---@type originframetype
ORIGIN_FRAME_TOOLTIP=nil
---@type originframetype
ORIGIN_FRAME_UBERTOOLTIP=nil
---@type originframetype
ORIGIN_FRAME_CHAT_MSG=nil
---@type originframetype
ORIGIN_FRAME_UNIT_MSG=nil
---@type originframetype
ORIGIN_FRAME_TOP_MSG=nil
---@type originframetype
ORIGIN_FRAME_PORTRAIT=nil
---@type originframetype
ORIGIN_FRAME_WORLD_FRAME=nil
---@type originframetype
ORIGIN_FRAME_SIMPLE_UI_PARENT=nil
---@type originframetype
ORIGIN_FRAME_PORTRAIT_HP_TEXT=nil
---@type originframetype
ORIGIN_FRAME_PORTRAIT_MANA_TEXT=nil
---@type originframetype
ORIGIN_FRAME_UNIT_PANEL_BUFF_BAR=nil
---@type originframetype
ORIGIN_FRAME_UNIT_PANEL_BUFF_BAR_LABEL=nil
---@type framepointtype
FRAMEPOINT_TOPLEFT=nil
---@type framepointtype
FRAMEPOINT_TOP=nil
---@type framepointtype
FRAMEPOINT_TOPRIGHT=nil
---@type framepointtype
FRAMEPOINT_LEFT=nil
---@type framepointtype
FRAMEPOINT_CENTER=nil
---@type framepointtype
FRAMEPOINT_RIGHT=nil
---@type framepointtype
FRAMEPOINT_BOTTOMLEFT=nil
---@type framepointtype
FRAMEPOINT_BOTTOM=nil
---@type framepointtype
FRAMEPOINT_BOTTOMRIGHT=nil
---@type textaligntype
TEXT_JUSTIFY_TOP=nil
---@type textaligntype
TEXT_JUSTIFY_MIDDLE=nil
---@type textaligntype
TEXT_JUSTIFY_BOTTOM=nil
---@type textaligntype
TEXT_JUSTIFY_LEFT=nil
---@type textaligntype
TEXT_JUSTIFY_CENTER=nil
---@type textaligntype
TEXT_JUSTIFY_RIGHT=nil
---@type frameeventtype
FRAMEEVENT_CONTROL_CLICK=nil
---@type frameeventtype
FRAMEEVENT_MOUSE_ENTER=nil
---@type frameeventtype
FRAMEEVENT_MOUSE_LEAVE=nil
---@type frameeventtype
FRAMEEVENT_MOUSE_UP=nil
---@type frameeventtype
FRAMEEVENT_MOUSE_DOWN=nil
---@type frameeventtype
FRAMEEVENT_MOUSE_WHEEL=nil
---@type frameeventtype
FRAMEEVENT_CHECKBOX_CHECKED=nil
---@type frameeventtype
FRAMEEVENT_CHECKBOX_UNCHECKED=nil
---@type frameeventtype
FRAMEEVENT_EDITBOX_TEXT_CHANGED=nil
---@type frameeventtype
FRAMEEVENT_POPUPMENU_ITEM_CHANGED=nil
---@type frameeventtype
FRAMEEVENT_MOUSE_DOUBLECLICK=nil
---@type frameeventtype
FRAMEEVENT_SPRITE_ANIM_UPDATE=nil
---@type frameeventtype
FRAMEEVENT_SLIDER_VALUE_CHANGED=nil
---@type frameeventtype
FRAMEEVENT_DIALOG_CANCEL=nil
---@type frameeventtype
FRAMEEVENT_DIALOG_ACCEPT=nil
---@type frameeventtype
FRAMEEVENT_EDITBOX_ENTER=nil
---@type oskeytype
OSKEY_BACKSPACE=nil
---@type oskeytype
OSKEY_TAB=nil
---@type oskeytype
OSKEY_CLEAR=nil
---@type oskeytype
OSKEY_RETURN=nil
---@type oskeytype
OSKEY_SHIFT=nil
---@type oskeytype
OSKEY_CONTROL=nil
---@type oskeytype
OSKEY_ALT=nil
---@type oskeytype
OSKEY_PAUSE=nil
---@type oskeytype
OSKEY_CAPSLOCK=nil
---@type oskeytype
OSKEY_KANA=nil
---@type oskeytype
OSKEY_HANGUL=nil
---@type oskeytype
OSKEY_JUNJA=nil
---@type oskeytype
OSKEY_FINAL=nil
---@type oskeytype
OSKEY_HANJA=nil
---@type oskeytype
OSKEY_KANJI=nil
---@type oskeytype
OSKEY_ESCAPE=nil
---@type oskeytype
OSKEY_CONVERT=nil
---@type oskeytype
OSKEY_NONCONVERT=nil
---@type oskeytype
OSKEY_ACCEPT=nil
---@type oskeytype
OSKEY_MODECHANGE=nil
---@type oskeytype
OSKEY_SPACE=nil
---@type oskeytype
OSKEY_PAGEUP=nil
---@type oskeytype
OSKEY_PAGEDOWN=nil
---@type oskeytype
OSKEY_END=nil
---@type oskeytype
OSKEY_HOME=nil
---@type oskeytype
OSKEY_LEFT=nil
---@type oskeytype
OSKEY_UP=nil
---@type oskeytype
OSKEY_RIGHT=nil
---@type oskeytype
OSKEY_DOWN=nil
---@type oskeytype
OSKEY_SELECT=nil
---@type oskeytype
OSKEY_PRINT=nil
---@type oskeytype
OSKEY_EXECUTE=nil
---@type oskeytype
OSKEY_PRINTSCREEN=nil
---@type oskeytype
OSKEY_INSERT=nil
---@type oskeytype
OSKEY_DELETE=nil
---@type oskeytype
OSKEY_HELP=nil
---@type oskeytype
OSKEY_0=nil
---@type oskeytype
OSKEY_1=nil
---@type oskeytype
OSKEY_2=nil
---@type oskeytype
OSKEY_3=nil
---@type oskeytype
OSKEY_4=nil
---@type oskeytype
OSKEY_5=nil
---@type oskeytype
OSKEY_6=nil
---@type oskeytype
OSKEY_7=nil
---@type oskeytype
OSKEY_8=nil
---@type oskeytype
OSKEY_9=nil
---@type oskeytype
OSKEY_A=nil
---@type oskeytype
OSKEY_B=nil
---@type oskeytype
OSKEY_C=nil
---@type oskeytype
OSKEY_D=nil
---@type oskeytype
OSKEY_E=nil
---@type oskeytype
OSKEY_F=nil
---@type oskeytype
OSKEY_G=nil
---@type oskeytype
OSKEY_H=nil
---@type oskeytype
OSKEY_I=nil
---@type oskeytype
OSKEY_J=nil
---@type oskeytype
OSKEY_K=nil
---@type oskeytype
OSKEY_L=nil
---@type oskeytype
OSKEY_M=nil
---@type oskeytype
OSKEY_N=nil
---@type oskeytype
OSKEY_O=nil
---@type oskeytype
OSKEY_P=nil
---@type oskeytype
OSKEY_Q=nil
---@type oskeytype
OSKEY_R=nil
---@type oskeytype
OSKEY_S=nil
---@type oskeytype
OSKEY_T=nil
---@type oskeytype
OSKEY_U=nil
---@type oskeytype
OSKEY_V=nil
---@type oskeytype
OSKEY_W=nil
---@type oskeytype
OSKEY_X=nil
---@type oskeytype
OSKEY_Y=nil
---@type oskeytype
OSKEY_Z=nil
---@type oskeytype
OSKEY_LMETA=nil
---@type oskeytype
OSKEY_RMETA=nil
---@type oskeytype
OSKEY_APPS=nil
---@type oskeytype
OSKEY_SLEEP=nil
---@type oskeytype
OSKEY_NUMPAD0=nil
---@type oskeytype
OSKEY_NUMPAD1=nil
---@type oskeytype
OSKEY_NUMPAD2=nil
---@type oskeytype
OSKEY_NUMPAD3=nil
---@type oskeytype
OSKEY_NUMPAD4=nil
---@type oskeytype
OSKEY_NUMPAD5=nil
---@type oskeytype
OSKEY_NUMPAD6=nil
---@type oskeytype
OSKEY_NUMPAD7=nil
---@type oskeytype
OSKEY_NUMPAD8=nil
---@type oskeytype
OSKEY_NUMPAD9=nil
---@type oskeytype
OSKEY_MULTIPLY=nil
---@type oskeytype
OSKEY_ADD=nil
---@type oskeytype
OSKEY_SEPARATOR=nil
---@type oskeytype
OSKEY_SUBTRACT=nil
---@type oskeytype
OSKEY_DECIMAL=nil
---@type oskeytype
OSKEY_DIVIDE=nil
---@type oskeytype
OSKEY_F1=nil
---@type oskeytype
OSKEY_F2=nil
---@type oskeytype
OSKEY_F3=nil
---@type oskeytype
OSKEY_F4=nil
---@type oskeytype
OSKEY_F5=nil
---@type oskeytype
OSKEY_F6=nil
---@type oskeytype
OSKEY_F7=nil
---@type oskeytype
OSKEY_F8=nil
---@type oskeytype
OSKEY_F9=nil
---@type oskeytype
OSKEY_F10=nil
---@type oskeytype
OSKEY_F11=nil
---@type oskeytype
OSKEY_F12=nil
---@type oskeytype
OSKEY_F13=nil
---@type oskeytype
OSKEY_F14=nil
---@type oskeytype
OSKEY_F15=nil
---@type oskeytype
OSKEY_F16=nil
---@type oskeytype
OSKEY_F17=nil
---@type oskeytype
OSKEY_F18=nil
---@type oskeytype
OSKEY_F19=nil
---@type oskeytype
OSKEY_F20=nil
---@type oskeytype
OSKEY_F21=nil
---@type oskeytype
OSKEY_F22=nil
---@type oskeytype
OSKEY_F23=nil
---@type oskeytype
OSKEY_F24=nil
---@type oskeytype
OSKEY_NUMLOCK=nil
---@type oskeytype
OSKEY_SCROLLLOCK=nil
---@type oskeytype
OSKEY_OEM_NEC_EQUAL=nil
---@type oskeytype
OSKEY_OEM_FJ_JISHO=nil
---@type oskeytype
OSKEY_OEM_FJ_MASSHOU=nil
---@type oskeytype
OSKEY_OEM_FJ_TOUROKU=nil
---@type oskeytype
OSKEY_OEM_FJ_LOYA=nil
---@type oskeytype
OSKEY_OEM_FJ_ROYA=nil
---@type oskeytype
OSKEY_LSHIFT=nil
---@type oskeytype
OSKEY_RSHIFT=nil
---@type oskeytype
OSKEY_LCONTROL=nil
---@type oskeytype
OSKEY_RCONTROL=nil
---@type oskeytype
OSKEY_LALT=nil
---@type oskeytype
OSKEY_RALT=nil
---@type oskeytype
OSKEY_BROWSER_BACK=nil
---@type oskeytype
OSKEY_BROWSER_FORWARD=nil
---@type oskeytype
OSKEY_BROWSER_REFRESH=nil
---@type oskeytype
OSKEY_BROWSER_STOP=nil
---@type oskeytype
OSKEY_BROWSER_SEARCH=nil
---@type oskeytype
OSKEY_BROWSER_FAVORITES=nil
---@type oskeytype
OSKEY_BROWSER_HOME=nil
---@type oskeytype
OSKEY_VOLUME_MUTE=nil
---@type oskeytype
OSKEY_VOLUME_DOWN=nil
---@type oskeytype
OSKEY_VOLUME_UP=nil
---@type oskeytype
OSKEY_MEDIA_NEXT_TRACK=nil
---@type oskeytype
OSKEY_MEDIA_PREV_TRACK=nil
---@type oskeytype
OSKEY_MEDIA_STOP=nil
---@type oskeytype
OSKEY_MEDIA_PLAY_PAUSE=nil
---@type oskeytype
OSKEY_LAUNCH_MAIL=nil
---@type oskeytype
OSKEY_LAUNCH_MEDIA_SELECT=nil
---@type oskeytype
OSKEY_LAUNCH_APP1=nil
---@type oskeytype
OSKEY_LAUNCH_APP2=nil
---@type oskeytype
OSKEY_OEM_1=nil
---@type oskeytype
OSKEY_OEM_PLUS=nil
---@type oskeytype
OSKEY_OEM_COMMA=nil
---@type oskeytype
OSKEY_OEM_MINUS=nil
---@type oskeytype
OSKEY_OEM_PERIOD=nil
---@type oskeytype
OSKEY_OEM_2=nil
---@type oskeytype
OSKEY_OEM_3=nil
---@type oskeytype
OSKEY_OEM_4=nil
---@type oskeytype
OSKEY_OEM_5=nil
---@type oskeytype
OSKEY_OEM_6=nil
---@type oskeytype
OSKEY_OEM_7=nil
---@type oskeytype
OSKEY_OEM_8=nil
---@type oskeytype
OSKEY_OEM_AX=nil
---@type oskeytype
OSKEY_OEM_102=nil
---@type oskeytype
OSKEY_ICO_HELP=nil
---@type oskeytype
OSKEY_ICO_00=nil
---@type oskeytype
OSKEY_PROCESSKEY=nil
---@type oskeytype
OSKEY_ICO_CLEAR=nil
---@type oskeytype
OSKEY_PACKET=nil
---@type oskeytype
OSKEY_OEM_RESET=nil
---@type oskeytype
OSKEY_OEM_JUMP=nil
---@type oskeytype
OSKEY_OEM_PA1=nil
---@type oskeytype
OSKEY_OEM_PA2=nil
---@type oskeytype
OSKEY_OEM_PA3=nil
---@type oskeytype
OSKEY_OEM_WSCTRL=nil
---@type oskeytype
OSKEY_OEM_CUSEL=nil
---@type oskeytype
OSKEY_OEM_ATTN=nil
---@type oskeytype
OSKEY_OEM_FINISH=nil
---@type oskeytype
OSKEY_OEM_COPY=nil
---@type oskeytype
OSKEY_OEM_AUTO=nil
---@type oskeytype
OSKEY_OEM_ENLW=nil
---@type oskeytype
OSKEY_OEM_BACKTAB=nil
---@type oskeytype
OSKEY_ATTN=nil
---@type oskeytype
OSKEY_CRSEL=nil
---@type oskeytype
OSKEY_EXSEL=nil
---@type oskeytype
OSKEY_EREOF=nil
---@type oskeytype
OSKEY_PLAY=nil
---@type oskeytype
OSKEY_ZOOM=nil
---@type oskeytype
OSKEY_NONAME=nil
---@type oskeytype
OSKEY_PA1=nil
---@type oskeytype
OSKEY_OEM_CLEAR=nil
---@type abilityintegerfield
ABILITY_IF_BUTTON_POSITION_NORMAL_X=nil
---@type abilityintegerfield
ABILITY_IF_BUTTON_POSITION_NORMAL_Y=nil
---@type abilityintegerfield
ABILITY_IF_BUTTON_POSITION_ACTIVATED_X=nil
---@type abilityintegerfield
ABILITY_IF_BUTTON_POSITION_ACTIVATED_Y=nil
---@type abilityintegerfield
ABILITY_IF_BUTTON_POSITION_RESEARCH_X=nil
---@type abilityintegerfield
ABILITY_IF_BUTTON_POSITION_RESEARCH_Y=nil
---@type abilityintegerfield
ABILITY_IF_MISSILE_SPEED=nil
---@type abilityintegerfield
ABILITY_IF_TARGET_ATTACHMENTS=nil
---@type abilityintegerfield
ABILITY_IF_CASTER_ATTACHMENTS=nil
---@type abilityintegerfield
ABILITY_IF_PRIORITY=nil
---@type abilityintegerfield
ABILITY_IF_LEVELS=nil
---@type abilityintegerfield
ABILITY_IF_REQUIRED_LEVEL=nil
---@type abilityintegerfield
ABILITY_IF_LEVEL_SKIP_REQUIREMENT=nil
---@type abilitybooleanfield
ABILITY_BF_HERO_ABILITY=nil
---@type abilitybooleanfield
ABILITY_BF_ITEM_ABILITY=nil
---@type abilitybooleanfield
ABILITY_BF_CHECK_DEPENDENCIES=nil
---@type abilityrealfield
ABILITY_RF_ARF_MISSILE_ARC=nil
---@type abilitystringfield
ABILITY_SF_NAME=nil
---@type abilitystringfield
ABILITY_SF_ICON_ACTIVATED=nil
---@type abilitystringfield
ABILITY_SF_ICON_RESEARCH=nil
---@type abilitystringfield
ABILITY_SF_EFFECT_SOUND=nil
---@type abilitystringfield
ABILITY_SF_EFFECT_SOUND_LOOPING=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MANA_COST=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_WAVES=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_SHARDS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_UNITS_TELEPORTED=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_COUNT_HWE2=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_IMAGES=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_UAN1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MORPHING_FLAGS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_STRENGTH_BONUS_NRG5=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DEFENSE_BONUS_NRG6=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_TARGETS_HIT=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DETECTION_TYPE_OFS1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_OSF2=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_EFN1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_HRE1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_STACK_FLAGS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MINIMUM_NUMBER_OF_UNITS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_NDP3=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_UNITS_CREATED_NRC2=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SHIELD_LIFE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MANA_LOSS_AMS4=nil
---@type abilityintegerlevelfield
ABILITY_ILF_GOLD_PER_INTERVAL_BGM1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAX_NUMBER_OF_MINERS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_CARGO_CAPACITY=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_CREEP_LEVEL_DEV3=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAX_CREEP_LEVEL_DEV1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_GOLD_PER_INTERVAL_EGM1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DEFENSE_REDUCTION=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DETECTION_TYPE_FLA1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_FLARE_COUNT=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAX_GOLD=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MINING_CAPACITY=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_NUMBER_OF_CORPSES_GYD1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DAMAGE_TO_TREE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_LUMBER_CAPACITY=nil
---@type abilityintegerlevelfield
ABILITY_ILF_GOLD_CAPACITY=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DEFENSE_INCREASE_INF2=nil
---@type abilityintegerlevelfield
ABILITY_ILF_INTERACTION_TYPE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_GOLD_COST_NDT1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_LUMBER_COST_NDT2=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DETECTION_TYPE_NDT3=nil
---@type abilityintegerlevelfield
ABILITY_ILF_STACKING_TYPE_POI4=nil
---@type abilityintegerlevelfield
ABILITY_ILF_STACKING_TYPE_POA5=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_CREEP_LEVEL_PLY1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_CREEP_LEVEL_POS1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MOVEMENT_UPDATE_FREQUENCY_PRG1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ATTACK_UPDATE_FREQUENCY_PRG2=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MANA_LOSS_PRG6=nil
---@type abilityintegerlevelfield
ABILITY_ILF_UNITS_SUMMONED_TYPE_ONE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_UNITS_SUMMONED_TYPE_TWO=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAX_UNITS_SUMMONED=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ALLOW_WHEN_FULL_REJ3=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_UNITS_CHARGED_TO_CASTER=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_UNITS_AFFECTED=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DEFENSE_INCREASE_ROA2=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAX_UNITS_ROA7=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ROOTED_WEAPONS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_UPROOTED_WEAPONS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_UPROOTED_DEFENSE_TYPE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ACCUMULATION_STEP=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_OWLS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_STACKING_TYPE_SPO4=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_UNITS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SPIDER_CAPACITY=nil
---@type abilityintegerlevelfield
ABILITY_ILF_INTERVALS_BEFORE_CHANGING_TREES=nil
---@type abilityintegerlevelfield
ABILITY_ILF_AGILITY_BONUS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_INTELLIGENCE_BONUS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_STRENGTH_BONUS_ISTR=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ATTACK_BONUS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DEFENSE_BONUS_IDEF=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SUMMON_1_AMOUNT=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SUMMON_2_AMOUNT=nil
---@type abilityintegerlevelfield
ABILITY_ILF_EXPERIENCE_GAINED=nil
---@type abilityintegerlevelfield
ABILITY_ILF_HIT_POINTS_GAINED_IHPG=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MANA_POINTS_GAINED_IMPG=nil
---@type abilityintegerlevelfield
ABILITY_ILF_HIT_POINTS_GAINED_IHP2=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MANA_POINTS_GAINED_IMP2=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DAMAGE_BONUS_DICE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ARMOR_PENALTY_IARP=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ENABLED_ATTACK_INDEX_IOB5=nil
---@type abilityintegerlevelfield
ABILITY_ILF_LEVELS_GAINED=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAX_LIFE_GAINED=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAX_MANA_GAINED=nil
---@type abilityintegerlevelfield
ABILITY_ILF_GOLD_GIVEN=nil
---@type abilityintegerlevelfield
ABILITY_ILF_LUMBER_GIVEN=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DETECTION_TYPE_IFA1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_CREEP_LEVEL_ICRE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MOVEMENT_SPEED_BONUS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_HIT_POINTS_REGENERATED_PER_SECOND=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SIGHT_RANGE_BONUS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DAMAGE_PER_DURATION=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MANA_USED_PER_SECOND=nil
---@type abilityintegerlevelfield
ABILITY_ILF_EXTRA_MANA_REQUIRED=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DETECTION_RADIUS_IDET=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MANA_LOSS_PER_UNIT_IDIM=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DAMAGE_TO_SUMMONED_UNITS_IDID=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_IREC=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DELAY_AFTER_DEATH_SECONDS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_RESTORED_LIFE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_RESTORED_MANA__1_FOR_CURRENT=nil
---@type abilityintegerlevelfield
ABILITY_ILF_HIT_POINTS_RESTORED=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MANA_POINTS_RESTORED=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_ITPM=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_CAD1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_TERRAIN_DEFORMATION_DURATION_MS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_UNITS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DETECTION_TYPE_DET1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_GOLD_COST_PER_STRUCTURE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_LUMBER_COST_PER_USE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DETECTION_TYPE_NSP3=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_SWARM_UNITS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAX_SWARM_UNITS_PER_TARGET=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_NBA2=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_CREEP_LEVEL_NCH1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ATTACKS_PREVENTED=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_NUMBER_OF_TARGETS_EFK3=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_ESV1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_NUMBER_OF_CORPSES_EXH1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ITEM_CAPACITY=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_NUMBER_OF_TARGETS_SPL2=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ALLOW_WHEN_FULL_IRL3=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_DISPELLED_UNITS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_LURES=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NEW_TIME_OF_DAY_HOUR=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NEW_TIME_OF_DAY_MINUTE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_UNITS_CREATED_MEC1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MINIMUM_SPELLS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_SPELLS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DISABLED_ATTACK_INDEX=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ENABLED_ATTACK_INDEX_GRA4=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_ATTACKS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_BUILDING_TYPES_ALLOWED_NPR1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_BUILDING_TYPES_ALLOWED_NSA1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ATTACK_MODIFICATION=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_COUNT_NPA5=nil
---@type abilityintegerlevelfield
ABILITY_ILF_UPGRADE_LEVELS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_NDO2=nil
---@type abilityintegerlevelfield
ABILITY_ILF_BEASTS_PER_SECOND=nil
---@type abilityintegerlevelfield
ABILITY_ILF_TARGET_TYPE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_OPTIONS=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ARMOR_PENALTY_NAB3=nil
---@type abilityintegerlevelfield
ABILITY_ILF_WAVE_COUNT_NHS6=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAX_CREEP_LEVEL_NTM3=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MISSILE_COUNT=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SPLIT_ATTACK_COUNT=nil
---@type abilityintegerlevelfield
ABILITY_ILF_GENERATION_COUNT=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ROCK_RING_COUNT=nil
---@type abilityintegerlevelfield
ABILITY_ILF_WAVE_COUNT_NVC2=nil
---@type abilityintegerlevelfield
ABILITY_ILF_PREFER_HOSTILES_TAU1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_PREFER_FRIENDLIES_TAU2=nil
---@type abilityintegerlevelfield
ABILITY_ILF_MAX_UNITS_TAU3=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_PULSES=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_TYPE_HWE1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_UIN4=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_OSF1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_TYPE_EFNU=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_TYPE_NBAU=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_TYPE_NTOU=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_TYPE_ESVU=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_TYPES=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_TYPE_NDOU=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ALTERNATE_FORM_UNIT_EMEU=nil
---@type abilityintegerlevelfield
ABILITY_ILF_PLAGUE_WARD_UNIT_TYPE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ALLOWED_UNIT_TYPE_BTL1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_NEW_UNIT_TYPE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_RESULTING_UNIT_TYPE_ENT1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_CORPSE_UNIT_TYPE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_ALLOWED_UNIT_TYPE_LOA1=nil
---@type abilityintegerlevelfield
ABILITY_ILF_UNIT_TYPE_FOR_LIMIT_CHECK=nil
---@type abilityintegerlevelfield
ABILITY_ILF_WARD_UNIT_TYPE_STAU=nil
---@type abilityintegerlevelfield
ABILITY_ILF_EFFECT_ABILITY=nil
---@type abilityintegerlevelfield
ABILITY_ILF_CONVERSION_UNIT=nil
---@type abilityintegerlevelfield
ABILITY_ILF_UNIT_TO_PRESERVE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_UNIT_TYPE_ALLOWED=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SWARM_UNIT_TYPE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_RESULTING_UNIT_TYPE_COAU=nil
---@type abilityintegerlevelfield
ABILITY_ILF_UNIT_TYPE_EXHU=nil
---@type abilityintegerlevelfield
ABILITY_ILF_WARD_UNIT_TYPE_HWDU=nil
---@type abilityintegerlevelfield
ABILITY_ILF_LURE_UNIT_TYPE=nil
---@type abilityintegerlevelfield
ABILITY_ILF_UNIT_TYPE_IPMU=nil
---@type abilityintegerlevelfield
ABILITY_ILF_FACTORY_UNIT_ID=nil
---@type abilityintegerlevelfield
ABILITY_ILF_SPAWN_UNIT_ID_NFYU=nil
---@type abilityintegerlevelfield
ABILITY_ILF_DESTRUCTIBLE_ID=nil
---@type abilityintegerlevelfield
ABILITY_ILF_UPGRADE_TYPE=nil
---@type abilityreallevelfield
ABILITY_RLF_CASTING_TIME=nil
---@type abilityreallevelfield
ABILITY_RLF_DURATION_NORMAL=nil
---@type abilityreallevelfield
ABILITY_RLF_DURATION_HERO=nil
---@type abilityreallevelfield
ABILITY_RLF_COOLDOWN=nil
---@type abilityreallevelfield
ABILITY_RLF_AREA_OF_EFFECT=nil
---@type abilityreallevelfield
ABILITY_RLF_CAST_RANGE=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_HBZ2=nil
---@type abilityreallevelfield
ABILITY_RLF_BUILDING_REDUCTION_HBZ4=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_HBZ5=nil
---@type abilityreallevelfield
ABILITY_RLF_MAXIMUM_DAMAGE_PER_WAVE=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_REGENERATION_INCREASE=nil
---@type abilityreallevelfield
ABILITY_RLF_CASTING_DELAY=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_OWW1=nil
---@type abilityreallevelfield
ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_OWW2=nil
---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_CRITICAL_STRIKE=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_MULTIPLIER_OCR2=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_OCR3=nil
---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_EVADE_OCR4=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_DEALT_PERCENT_OMI2=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_TAKEN_PERCENT_OMI3=nil
---@type abilityreallevelfield
ABILITY_RLF_ANIMATION_DELAY=nil
---@type abilityreallevelfield
ABILITY_RLF_TRANSITION_TIME=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_OWK2=nil
---@type abilityreallevelfield
ABILITY_RLF_BACKSTAB_DAMAGE=nil
---@type abilityreallevelfield
ABILITY_RLF_AMOUNT_HEALED_DAMAGED_UDC1=nil
---@type abilityreallevelfield
ABILITY_RLF_LIFE_CONVERTED_TO_MANA=nil
---@type abilityreallevelfield
ABILITY_RLF_LIFE_CONVERTED_TO_LIFE=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_UAU1=nil
---@type abilityreallevelfield
ABILITY_RLF_LIFE_REGENERATION_INCREASE_PERCENT=nil
---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_EVADE_EEV1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_INTERVAL=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_DRAINED_PER_SECOND_EIM2=nil
---@type abilityreallevelfield
ABILITY_RLF_BUFFER_MANA_REQUIRED=nil
---@type abilityreallevelfield
ABILITY_RLF_MAX_MANA_DRAINED=nil
---@type abilityreallevelfield
ABILITY_RLF_BOLT_DELAY=nil
---@type abilityreallevelfield
ABILITY_RLF_BOLT_LIFETIME=nil
---@type abilityreallevelfield
ABILITY_RLF_ALTITUDE_ADJUSTMENT_DURATION=nil
---@type abilityreallevelfield
ABILITY_RLF_LANDING_DELAY_TIME=nil
---@type abilityreallevelfield
ABILITY_RLF_ALTERNATE_FORM_HIT_POINT_BONUS=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVE_SPEED_BONUS_INFO_PANEL_ONLY=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_BONUS_INFO_PANEL_ONLY=nil
---@type abilityreallevelfield
ABILITY_RLF_LIFE_REGENERATION_RATE_PER_SECOND=nil
---@type abilityreallevelfield
ABILITY_RLF_STUN_DURATION_USL1=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_DAMAGE_STOLEN_PERCENT=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_UCS1=nil
---@type abilityreallevelfield
ABILITY_RLF_MAX_DAMAGE_UCS2=nil
---@type abilityreallevelfield
ABILITY_RLF_DISTANCE_UCS3=nil
---@type abilityreallevelfield
ABILITY_RLF_FINAL_AREA_UCS4=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_UIN1=nil
---@type abilityreallevelfield
ABILITY_RLF_DURATION=nil
---@type abilityreallevelfield
ABILITY_RLF_IMPACT_DELAY=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_TARGET_OCL1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_REDUCTION_PER_TARGET=nil
---@type abilityreallevelfield
ABILITY_RLF_EFFECT_DELAY_OEQ1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_TO_BUILDINGS=nil
---@type abilityreallevelfield
ABILITY_RLF_UNITS_SLOWED_PERCENT=nil
---@type abilityreallevelfield
ABILITY_RLF_FINAL_AREA_OEQ4=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_EER1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_DEALT_TO_ATTACKERS=nil
---@type abilityreallevelfield
ABILITY_RLF_LIFE_HEALED=nil
---@type abilityreallevelfield
ABILITY_RLF_HEAL_INTERVAL=nil
---@type abilityreallevelfield
ABILITY_RLF_BUILDING_REDUCTION_ETQ3=nil
---@type abilityreallevelfield
ABILITY_RLF_INITIAL_IMMUNITY_DURATION=nil
---@type abilityreallevelfield
ABILITY_RLF_MAX_LIFE_DRAINED_PER_SECOND_PERCENT=nil
---@type abilityreallevelfield
ABILITY_RLF_BUILDING_REDUCTION_UDD2=nil
---@type abilityreallevelfield
ABILITY_RLF_ARMOR_DURATION=nil
---@type abilityreallevelfield
ABILITY_RLF_ARMOR_BONUS_UFA2=nil
---@type abilityreallevelfield
ABILITY_RLF_AREA_OF_EFFECT_DAMAGE=nil
---@type abilityreallevelfield
ABILITY_RLF_SPECIFIC_TARGET_DAMAGE_UFN2=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_HFA1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_DEALT_ESF1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_INTERVAL_ESF2=nil
---@type abilityreallevelfield
ABILITY_RLF_BUILDING_REDUCTION_ESF3=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_PERCENT=nil
---@type abilityreallevelfield
ABILITY_RLF_DEFENSE_BONUS_HAV1=nil
---@type abilityreallevelfield
ABILITY_RLF_HIT_POINT_BONUS=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_HAV3=nil
---@type abilityreallevelfield
ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_HAV4=nil
---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_BASH=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_MULTIPLIER_HBH2=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_HBH3=nil
---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_MISS_HBH4=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_HTB1=nil
---@type abilityreallevelfield
ABILITY_RLF_AOE_DAMAGE=nil
---@type abilityreallevelfield
ABILITY_RLF_SPECIFIC_TARGET_DAMAGE_HTC2=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_HTC3=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_HTC4=nil
---@type abilityreallevelfield
ABILITY_RLF_ARMOR_BONUS_HAD1=nil
---@type abilityreallevelfield
ABILITY_RLF_AMOUNT_HEALED_DAMAGED_HHB1=nil
---@type abilityreallevelfield
ABILITY_RLF_EXTRA_DAMAGE_HCA1=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_FACTOR_HCA2=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_FACTOR_HCA3=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_OAE1=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_INCREASE_PERCENT_OAE2=nil
---@type abilityreallevelfield
ABILITY_RLF_REINCARNATION_DELAY=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_OSH1=nil
---@type abilityreallevelfield
ABILITY_RLF_MAXIMUM_DAMAGE_OSH2=nil
---@type abilityreallevelfield
ABILITY_RLF_DISTANCE_OSH3=nil
---@type abilityreallevelfield
ABILITY_RLF_FINAL_AREA_OSH4=nil
---@type abilityreallevelfield
ABILITY_RLF_GRAPHIC_DELAY_NFD1=nil
---@type abilityreallevelfield
ABILITY_RLF_GRAPHIC_DURATION_NFD2=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_NFD3=nil
---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DAMAGE_AMS1=nil
---@type abilityreallevelfield
ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_AMS2=nil
---@type abilityreallevelfield
ABILITY_RLF_AURA_DURATION=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_APL2=nil
---@type abilityreallevelfield
ABILITY_RLF_DURATION_OF_PLAGUE_WARD=nil
---@type abilityreallevelfield
ABILITY_RLF_AMOUNT_OF_HIT_POINTS_REGENERATED=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_DAMAGE_INCREASE_AKB1=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_LOSS_ADM1=nil
---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DAMAGE_ADM2=nil
---@type abilityreallevelfield
ABILITY_RLF_EXPANSION_AMOUNT=nil
---@type abilityreallevelfield
ABILITY_RLF_INTERVAL_DURATION_BGM2=nil
---@type abilityreallevelfield
ABILITY_RLF_RADIUS_OF_MINING_RING=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_INCREASE_PERCENT_BLO1=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_BLO2=nil
---@type abilityreallevelfield
ABILITY_RLF_SCALING_FACTOR=nil
---@type abilityreallevelfield
ABILITY_RLF_HIT_POINTS_PER_SECOND_CAN1=nil
---@type abilityreallevelfield
ABILITY_RLF_MAX_HIT_POINTS=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_DEV2=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_UPDATE_FREQUENCY_CHD1=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_UPDATE_FREQUENCY_CHD2=nil
---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DAMAGE_CHD3=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_CRI1=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_CRI2=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_REDUCTION_CRI3=nil
---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_MISS_CRS=nil
---@type abilityreallevelfield
ABILITY_RLF_FULL_DAMAGE_RADIUS_DDA1=nil
---@type abilityreallevelfield
ABILITY_RLF_FULL_DAMAGE_AMOUNT_DDA2=nil
---@type abilityreallevelfield
ABILITY_RLF_PARTIAL_DAMAGE_RADIUS=nil
---@type abilityreallevelfield
ABILITY_RLF_PARTIAL_DAMAGE_AMOUNT=nil
---@type abilityreallevelfield
ABILITY_RLF_BUILDING_DAMAGE_FACTOR_SDS1=nil
---@type abilityreallevelfield
ABILITY_RLF_MAX_DAMAGE_UCO5=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVE_SPEED_BONUS_UCO6=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_TAKEN_PERCENT_DEF1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_DEALT_PERCENT_DEF2=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_FACTOR_DEF3=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_FACTOR_DEF4=nil
---@type abilityreallevelfield
ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_DEF5=nil
---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_DEFLECT=nil
---@type abilityreallevelfield
ABILITY_RLF_DEFLECT_DAMAGE_TAKEN_PIERCING=nil
---@type abilityreallevelfield
ABILITY_RLF_DEFLECT_DAMAGE_TAKEN_SPELLS=nil
---@type abilityreallevelfield
ABILITY_RLF_RIP_DELAY=nil
---@type abilityreallevelfield
ABILITY_RLF_EAT_DELAY=nil
---@type abilityreallevelfield
ABILITY_RLF_HIT_POINTS_GAINED_EAT3=nil
---@type abilityreallevelfield
ABILITY_RLF_AIR_UNIT_LOWER_DURATION=nil
---@type abilityreallevelfield
ABILITY_RLF_AIR_UNIT_HEIGHT=nil
---@type abilityreallevelfield
ABILITY_RLF_MELEE_ATTACK_RANGE=nil
---@type abilityreallevelfield
ABILITY_RLF_INTERVAL_DURATION_EGM2=nil
---@type abilityreallevelfield
ABILITY_RLF_EFFECT_DELAY_FLA2=nil
---@type abilityreallevelfield
ABILITY_RLF_MINING_DURATION=nil
---@type abilityreallevelfield
ABILITY_RLF_RADIUS_OF_GRAVESTONES=nil
---@type abilityreallevelfield
ABILITY_RLF_RADIUS_OF_CORPSES=nil
---@type abilityreallevelfield
ABILITY_RLF_HIT_POINTS_GAINED_HEA1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_INCREASE_PERCENT_INF1=nil
---@type abilityreallevelfield
ABILITY_RLF_AUTOCAST_RANGE=nil
---@type abilityreallevelfield
ABILITY_RLF_LIFE_REGEN_RATE=nil
---@type abilityreallevelfield
ABILITY_RLF_GRAPHIC_DELAY_LIT1=nil
---@type abilityreallevelfield
ABILITY_RLF_GRAPHIC_DURATION_LIT2=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_LSH1=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_GAINED=nil
---@type abilityreallevelfield
ABILITY_RLF_HIT_POINTS_GAINED_MBT2=nil
---@type abilityreallevelfield
ABILITY_RLF_AUTOCAST_REQUIREMENT=nil
---@type abilityreallevelfield
ABILITY_RLF_WATER_HEIGHT=nil
---@type abilityreallevelfield
ABILITY_RLF_ACTIVATION_DELAY_MIN1=nil
---@type abilityreallevelfield
ABILITY_RLF_INVISIBILITY_TRANSITION_TIME=nil
---@type abilityreallevelfield
ABILITY_RLF_ACTIVATION_RADIUS=nil
---@type abilityreallevelfield
ABILITY_RLF_AMOUNT_REGENERATED=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_POI1=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_FACTOR_POI2=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_FACTOR_POI3=nil
---@type abilityreallevelfield
ABILITY_RLF_EXTRA_DAMAGE_POA1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_POA2=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_FACTOR_POA3=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_FACTOR_POA4=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_AMPLIFICATION=nil
---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_STOMP_PERCENT=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_DEALT_WAR2=nil
---@type abilityreallevelfield
ABILITY_RLF_FULL_DAMAGE_RADIUS_WAR3=nil
---@type abilityreallevelfield
ABILITY_RLF_HALF_DAMAGE_RADIUS_WAR4=nil
---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DAMAGE_PRG3=nil
---@type abilityreallevelfield
ABILITY_RLF_UNIT_PAUSE_DURATION=nil
---@type abilityreallevelfield
ABILITY_RLF_HERO_PAUSE_DURATION=nil
---@type abilityreallevelfield
ABILITY_RLF_HIT_POINTS_GAINED_REJ1=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_POINTS_GAINED_REJ2=nil
---@type abilityreallevelfield
ABILITY_RLF_MINIMUM_LIFE_REQUIRED=nil
---@type abilityreallevelfield
ABILITY_RLF_MINIMUM_MANA_REQUIRED=nil
---@type abilityreallevelfield
ABILITY_RLF_REPAIR_COST_RATIO=nil
---@type abilityreallevelfield
ABILITY_RLF_REPAIR_TIME_RATIO=nil
---@type abilityreallevelfield
ABILITY_RLF_POWERBUILD_COST=nil
---@type abilityreallevelfield
ABILITY_RLF_POWERBUILD_RATE=nil
---@type abilityreallevelfield
ABILITY_RLF_NAVAL_RANGE_BONUS=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_INCREASE_PERCENT_ROA1=nil
---@type abilityreallevelfield
ABILITY_RLF_LIFE_REGENERATION_RATE=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_REGEN=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_INCREASE=nil
---@type abilityreallevelfield
ABILITY_RLF_SALVAGE_COST_RATIO=nil
---@type abilityreallevelfield
ABILITY_RLF_IN_FLIGHT_SIGHT_RADIUS=nil
---@type abilityreallevelfield
ABILITY_RLF_HOVERING_SIGHT_RADIUS=nil
---@type abilityreallevelfield
ABILITY_RLF_HOVERING_HEIGHT=nil
---@type abilityreallevelfield
ABILITY_RLF_DURATION_OF_OWLS=nil
---@type abilityreallevelfield
ABILITY_RLF_FADE_DURATION=nil
---@type abilityreallevelfield
ABILITY_RLF_DAY_NIGHT_DURATION=nil
---@type abilityreallevelfield
ABILITY_RLF_ACTION_DURATION=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_FACTOR_SLO1=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_FACTOR_SLO2=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_SPO1=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_FACTOR_SPO2=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_FACTOR_SPO3=nil
---@type abilityreallevelfield
ABILITY_RLF_ACTIVATION_DELAY_STA1=nil
---@type abilityreallevelfield
ABILITY_RLF_DETECTION_RADIUS_STA2=nil
---@type abilityreallevelfield
ABILITY_RLF_DETONATION_RADIUS=nil
---@type abilityreallevelfield
ABILITY_RLF_STUN_DURATION_STA4=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_BONUS_PERCENT=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_UHF2=nil
---@type abilityreallevelfield
ABILITY_RLF_LUMBER_PER_INTERVAL=nil
---@type abilityreallevelfield
ABILITY_RLF_ART_ATTACHMENT_HEIGHT=nil
---@type abilityreallevelfield
ABILITY_RLF_TELEPORT_AREA_WIDTH=nil
---@type abilityreallevelfield
ABILITY_RLF_TELEPORT_AREA_HEIGHT=nil
---@type abilityreallevelfield
ABILITY_RLF_LIFE_STOLEN_PER_ATTACK=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_IDAM=nil
---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_HIT_UNITS_PERCENT=nil
---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_HIT_HEROS_PERCENT=nil
---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_HIT_SUMMONS_PERCENT=nil
---@type abilityreallevelfield
ABILITY_RLF_DELAY_FOR_TARGET_EFFECT=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_DEALT_PERCENT_OF_NORMAL=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_RECEIVED_MULTIPLIER=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_REGENERATION_BONUS_AS_FRACTION_OF_NORMAL=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_INCREASE_ISPI=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_IDPS=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_DAMAGE_INCREASE_CAC1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_COR1=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_INCREASE_ISX1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_WRS1=nil
---@type abilityreallevelfield
ABILITY_RLF_TERRAIN_DEFORMATION_AMPLITUDE=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_CTC1=nil
---@type abilityreallevelfield
ABILITY_RLF_EXTRA_DAMAGE_TO_TARGET=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_CTC3=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_REDUCTION_CTC4=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_CTB1=nil
---@type abilityreallevelfield
ABILITY_RLF_CASTING_DELAY_SECONDS=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_LOSS_PER_UNIT_DTN1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_TO_SUMMONED_UNITS_DTN2=nil
---@type abilityreallevelfield
ABILITY_RLF_TRANSITION_TIME_SECONDS=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_DRAINED_PER_SECOND_NMR1=nil
---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_REDUCE_DAMAGE_PERCENT=nil
---@type abilityreallevelfield
ABILITY_RLF_MINIMUM_DAMAGE=nil
---@type abilityreallevelfield
ABILITY_RLF_IGNORED_DAMAGE=nil
---@type abilityreallevelfield
ABILITY_RLF_FULL_DAMAGE_DEALT=nil
---@type abilityreallevelfield
ABILITY_RLF_FULL_DAMAGE_INTERVAL=nil
---@type abilityreallevelfield
ABILITY_RLF_HALF_DAMAGE_DEALT=nil
---@type abilityreallevelfield
ABILITY_RLF_HALF_DAMAGE_INTERVAL=nil
---@type abilityreallevelfield
ABILITY_RLF_BUILDING_REDUCTION_HFS5=nil
---@type abilityreallevelfield
ABILITY_RLF_MAXIMUM_DAMAGE_HFS6=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_PER_HIT_POINT=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_ABSORBED_PERCENT=nil
---@type abilityreallevelfield
ABILITY_RLF_WAVE_DISTANCE=nil
---@type abilityreallevelfield
ABILITY_RLF_WAVE_TIME_SECONDS=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_DEALT_UIM3=nil
---@type abilityreallevelfield
ABILITY_RLF_AIR_TIME_SECONDS_UIM4=nil
---@type abilityreallevelfield
ABILITY_RLF_UNIT_RELEASE_INTERVAL_SECONDS=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_RETURN_FACTOR=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_RETURN_THRESHOLD=nil
---@type abilityreallevelfield
ABILITY_RLF_RETURNED_DAMAGE_FACTOR=nil
---@type abilityreallevelfield
ABILITY_RLF_RECEIVED_DAMAGE_FACTOR=nil
---@type abilityreallevelfield
ABILITY_RLF_DEFENSE_BONUS_UTS3=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_NBA1=nil
---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DURATION_SECONDS_NBA3=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_PER_SUMMONED_HITPOINT=nil
---@type abilityreallevelfield
ABILITY_RLF_CHARGE_FOR_CURRENT_LIFE=nil
---@type abilityreallevelfield
ABILITY_RLF_HIT_POINTS_DRAINED=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_POINTS_DRAINED=nil
---@type abilityreallevelfield
ABILITY_RLF_DRAIN_INTERVAL_SECONDS=nil
---@type abilityreallevelfield
ABILITY_RLF_LIFE_TRANSFERRED_PER_SECOND=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_TRANSFERRED_PER_SECOND=nil
---@type abilityreallevelfield
ABILITY_RLF_BONUS_LIFE_FACTOR=nil
---@type abilityreallevelfield
ABILITY_RLF_BONUS_LIFE_DECAY=nil
---@type abilityreallevelfield
ABILITY_RLF_BONUS_MANA_FACTOR=nil
---@type abilityreallevelfield
ABILITY_RLF_BONUS_MANA_DECAY=nil
---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_MISS_PERCENT=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_MODIFIER=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_MODIFIER=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_TDG1=nil
---@type abilityreallevelfield
ABILITY_RLF_MEDIUM_DAMAGE_RADIUS_TDG2=nil
---@type abilityreallevelfield
ABILITY_RLF_MEDIUM_DAMAGE_PER_SECOND=nil
---@type abilityreallevelfield
ABILITY_RLF_SMALL_DAMAGE_RADIUS_TDG4=nil
---@type abilityreallevelfield
ABILITY_RLF_SMALL_DAMAGE_PER_SECOND=nil
---@type abilityreallevelfield
ABILITY_RLF_AIR_TIME_SECONDS_TSP1=nil
---@type abilityreallevelfield
ABILITY_RLF_MINIMUM_HIT_INTERVAL_SECONDS=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_NBF5=nil
---@type abilityreallevelfield
ABILITY_RLF_MAXIMUM_RANGE=nil
---@type abilityreallevelfield
ABILITY_RLF_MINIMUM_RANGE=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_TARGET_EFK1=nil
---@type abilityreallevelfield
ABILITY_RLF_MAXIMUM_TOTAL_DAMAGE=nil
---@type abilityreallevelfield
ABILITY_RLF_MAXIMUM_SPEED_ADJUSTMENT=nil
---@type abilityreallevelfield
ABILITY_RLF_DECAYING_DAMAGE=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_FACTOR_ESH2=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_FACTOR_ESH3=nil
---@type abilityreallevelfield
ABILITY_RLF_DECAY_POWER=nil
---@type abilityreallevelfield
ABILITY_RLF_INITIAL_DAMAGE_ESH5=nil
---@type abilityreallevelfield
ABILITY_RLF_MAXIMUM_LIFE_ABSORBED=nil
---@type abilityreallevelfield
ABILITY_RLF_MAXIMUM_MANA_ABSORBED=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_INCREASE_BSK1=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_INCREASE_BSK2=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_TAKEN_INCREASE=nil
---@type abilityreallevelfield
ABILITY_RLF_LIFE_PER_UNIT=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_PER_UNIT=nil
---@type abilityreallevelfield
ABILITY_RLF_LIFE_PER_BUFF=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_PER_BUFF=nil
---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DAMAGE_DVM5=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_FAK1=nil
---@type abilityreallevelfield
ABILITY_RLF_MEDIUM_DAMAGE_FACTOR_FAK2=nil
---@type abilityreallevelfield
ABILITY_RLF_SMALL_DAMAGE_FACTOR_FAK3=nil
---@type abilityreallevelfield
ABILITY_RLF_FULL_DAMAGE_RADIUS_FAK4=nil
---@type abilityreallevelfield
ABILITY_RLF_HALF_DAMAGE_RADIUS_FAK5=nil
---@type abilityreallevelfield
ABILITY_RLF_EXTRA_DAMAGE_PER_SECOND=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_LIQ2=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_REDUCTION_LIQ3=nil
---@type abilityreallevelfield
ABILITY_RLF_MAGIC_DAMAGE_FACTOR=nil
---@type abilityreallevelfield
ABILITY_RLF_UNIT_DAMAGE_PER_MANA_POINT=nil
---@type abilityreallevelfield
ABILITY_RLF_HERO_DAMAGE_PER_MANA_POINT=nil
---@type abilityreallevelfield
ABILITY_RLF_UNIT_MAXIMUM_DAMAGE=nil
---@type abilityreallevelfield
ABILITY_RLF_HERO_MAXIMUM_DAMAGE=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_COOLDOWN=nil
---@type abilityreallevelfield
ABILITY_RLF_DISTRIBUTED_DAMAGE_FACTOR_SPL1=nil
---@type abilityreallevelfield
ABILITY_RLF_LIFE_REGENERATED=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_REGENERATED=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_LOSS_PER_UNIT_IDC1=nil
---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DAMAGE_IDC2=nil
---@type abilityreallevelfield
ABILITY_RLF_ACTIVATION_DELAY_IMO2=nil
---@type abilityreallevelfield
ABILITY_RLF_LURE_INTERVAL_SECONDS=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_ISR1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_REDUCTION_ISR2=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_IPV1=nil
---@type abilityreallevelfield
ABILITY_RLF_LIFE_STEAL_AMOUNT=nil
---@type abilityreallevelfield
ABILITY_RLF_LIFE_RESTORED_FACTOR=nil
---@type abilityreallevelfield
ABILITY_RLF_MANA_RESTORED_FACTOR=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACH_DELAY=nil
---@type abilityreallevelfield
ABILITY_RLF_REMOVE_DELAY=nil
---@type abilityreallevelfield
ABILITY_RLF_HERO_REGENERATION_DELAY=nil
---@type abilityreallevelfield
ABILITY_RLF_UNIT_REGENERATION_DELAY=nil
---@type abilityreallevelfield
ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_NSA4=nil
---@type abilityreallevelfield
ABILITY_RLF_HIT_POINTS_PER_SECOND_NSA5=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_TO_SUMMONED_UNITS_IXS1=nil
---@type abilityreallevelfield
ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_IXS2=nil
---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DURATION=nil
---@type abilityreallevelfield
ABILITY_RLF_SHIELD_COOLDOWN_TIME=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_NDO1=nil
---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DURATION_SECONDS_NDO3=nil
---@type abilityreallevelfield
ABILITY_RLF_MEDIUM_DAMAGE_RADIUS_FLK1=nil
---@type abilityreallevelfield
ABILITY_RLF_SMALL_DAMAGE_RADIUS_FLK2=nil
---@type abilityreallevelfield
ABILITY_RLF_FULL_DAMAGE_AMOUNT_FLK3=nil
---@type abilityreallevelfield
ABILITY_RLF_MEDIUM_DAMAGE_AMOUNT=nil
---@type abilityreallevelfield
ABILITY_RLF_SMALL_DAMAGE_AMOUNT=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_HBN1=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_HBN2=nil
---@type abilityreallevelfield
ABILITY_RLF_MAX_MANA_DRAINED_UNITS=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_RATIO_UNITS_PERCENT=nil
---@type abilityreallevelfield
ABILITY_RLF_MAX_MANA_DRAINED_HEROS=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_RATIO_HEROS_PERCENT=nil
---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_DAMAGE=nil
---@type abilityreallevelfield
ABILITY_RLF_DISTRIBUTED_DAMAGE_FACTOR_NCA1=nil
---@type abilityreallevelfield
ABILITY_RLF_INITIAL_DAMAGE_PXF1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_PXF2=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_MLS1=nil
---@type abilityreallevelfield
ABILITY_RLF_BEAST_COLLISION_RADIUS=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_AMOUNT_NST3=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_RADIUS=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_DELAY=nil
---@type abilityreallevelfield
ABILITY_RLF_FOLLOW_THROUGH_TIME=nil
---@type abilityreallevelfield
ABILITY_RLF_ART_DURATION=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_NAB1=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_NAB2=nil
---@type abilityreallevelfield
ABILITY_RLF_PRIMARY_DAMAGE=nil
---@type abilityreallevelfield
ABILITY_RLF_SECONDARY_DAMAGE=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_INTERVAL_NAB6=nil
---@type abilityreallevelfield
ABILITY_RLF_GOLD_COST_FACTOR=nil
---@type abilityreallevelfield
ABILITY_RLF_LUMBER_COST_FACTOR=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVE_SPEED_BONUS_NEG1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_NEG2=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_AMOUNT_NCS1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_INTERVAL_NCS2=nil
---@type abilityreallevelfield
ABILITY_RLF_MAX_DAMAGE_NCS4=nil
---@type abilityreallevelfield
ABILITY_RLF_BUILDING_DAMAGE_FACTOR_NCS5=nil
---@type abilityreallevelfield
ABILITY_RLF_EFFECT_DURATION=nil
---@type abilityreallevelfield
ABILITY_RLF_SPAWN_INTERVAL_NSY1=nil
---@type abilityreallevelfield
ABILITY_RLF_SPAWN_UNIT_DURATION=nil
---@type abilityreallevelfield
ABILITY_RLF_SPAWN_UNIT_OFFSET=nil
---@type abilityreallevelfield
ABILITY_RLF_LEASH_RANGE_NSY5=nil
---@type abilityreallevelfield
ABILITY_RLF_SPAWN_INTERVAL_NFY1=nil
---@type abilityreallevelfield
ABILITY_RLF_LEASH_RANGE_NFY2=nil
---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_DEMOLISH=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_MULTIPLIER_BUILDINGS=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_MULTIPLIER_UNITS=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_MULTIPLIER_HEROES=nil
---@type abilityreallevelfield
ABILITY_RLF_BONUS_DAMAGE_MULTIPLIER=nil
---@type abilityreallevelfield
ABILITY_RLF_DEATH_DAMAGE_FULL_AMOUNT=nil
---@type abilityreallevelfield
ABILITY_RLF_DEATH_DAMAGE_FULL_AREA=nil
---@type abilityreallevelfield
ABILITY_RLF_DEATH_DAMAGE_HALF_AMOUNT=nil
---@type abilityreallevelfield
ABILITY_RLF_DEATH_DAMAGE_HALF_AREA=nil
---@type abilityreallevelfield
ABILITY_RLF_DEATH_DAMAGE_DELAY=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_AMOUNT_NSO1=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PERIOD=nil
---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PENALTY=nil
---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_NSO4=nil
---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_NSO5=nil
---@type abilityreallevelfield
ABILITY_RLF_SPLIT_DELAY=nil
---@type abilityreallevelfield
ABILITY_RLF_MAX_HITPOINT_FACTOR=nil
---@type abilityreallevelfield
ABILITY_RLF_LIFE_DURATION_SPLIT_BONUS=nil
---@type abilityreallevelfield
ABILITY_RLF_WAVE_INTERVAL=nil
---@type abilityreallevelfield
ABILITY_RLF_BUILDING_DAMAGE_FACTOR_NVC4=nil
---@type abilityreallevelfield
ABILITY_RLF_FULL_DAMAGE_AMOUNT_NVC5=nil
---@type abilityreallevelfield
ABILITY_RLF_HALF_DAMAGE_FACTOR=nil
---@type abilityreallevelfield
ABILITY_RLF_INTERVAL_BETWEEN_PULSES=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_PERCENT_BONUS_HAB2=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_USE_TELEPORT_CLUSTERING_HMT3=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_NEVER_MISS_OCR5=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_EXCLUDE_ITEM_DAMAGE=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_BACKSTAB_DAMAGE=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_INHERIT_UPGRADES_UAN3=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_MANA_CONVERSION_AS_PERCENT=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_LIFE_CONVERSION_AS_PERCENT=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_LEAVE_TARGET_ALIVE=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_PERCENT_BONUS_UAU3=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_DAMAGE_IS_PERCENT_RECEIVED=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_MELEE_BONUS=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_RANGED_BONUS=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_FLAT_BONUS=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_NEVER_MISS_HBH5=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_PERCENT_BONUS_HAD2=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_CAN_DEACTIVATE=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_RAISED_UNITS_ARE_INVULNERABLE=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_PERCENTAGE_OAR2=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_SUMMON_BUSY_UNITS=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_CREATES_BLIGHT=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_EXPLODES_ON_DEATH=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_ALWAYS_AUTOCAST_FAE2=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_REGENERATE_ONLY_AT_NIGHT=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_SHOW_SELECT_UNIT_BUTTON=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_SHOW_UNIT_INDICATOR=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_CHARGE_OWNING_PLAYER=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_PERCENTAGE_ARM2=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_TARGET_IS_INVULNERABLE=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_TARGET_IS_MAGIC_IMMUNE=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_KILL_ON_CASTER_DEATH=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_NO_TARGET_REQUIRED_REJ4=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_ACCEPTS_GOLD=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_ACCEPTS_LUMBER=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_PREFER_HOSTILES_ROA5=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_PREFER_FRIENDLIES_ROA6=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_ROOTED_TURNING=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_ALWAYS_AUTOCAST_SLO3=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_HIDE_BUTTON=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_USE_TELEPORT_CLUSTERING_ITP2=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_IMMUNE_TO_MORPH_EFFECTS=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_DOES_NOT_BLOCK_BUILDINGS=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_AUTO_ACQUIRE_ATTACK_TARGETS=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_IMMUNE_TO_MORPH_EFFECTS_GHO2=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_DO_NOT_BLOCK_BUILDINGS=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_INCLUDE_RANGED_DAMAGE=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_INCLUDE_MELEE_DAMAGE=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_MOVE_TO_PARTNER=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_CAN_BE_DISPELLED=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_IGNORE_FRIENDLY_BUFFS=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_DROP_ITEMS_ON_DEATH=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_CAN_USE_ITEMS=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_CAN_GET_ITEMS=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_CAN_DROP_ITEMS=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_REPAIRS_ALLOWED=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_CASTER_ONLY_SPLASH=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_NO_TARGET_REQUIRED_IRL4=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_DISPEL_ON_ATTACK=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_AMOUNT_IS_RAW_VALUE=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_SHARED_SPELL_COOLDOWN=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_SLEEP_ONCE=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_ALLOW_ON_ANY_PLAYER_SLOT=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_DISABLE_OTHER_ABILITIES=nil
---@type abilitybooleanlevelfield
ABILITY_BLF_ALLOW_BOUNTY=nil
---@type abilitystringlevelfield
ABILITY_SLF_ICON_NORMAL=nil
---@type abilitystringlevelfield
ABILITY_SLF_CASTER=nil
---@type abilitystringlevelfield
ABILITY_SLF_TARGET=nil
---@type abilitystringlevelfield
ABILITY_SLF_SPECIAL=nil
---@type abilitystringlevelfield
ABILITY_SLF_EFFECT=nil
---@type abilitystringlevelfield
ABILITY_SLF_AREA_EFFECT=nil
---@type abilitystringlevelfield
ABILITY_SLF_LIGHTNING_EFFECTS=nil
---@type abilitystringlevelfield
ABILITY_SLF_MISSILE_ART=nil
---@type abilitystringlevelfield
ABILITY_SLF_TOOLTIP_LEARN=nil
---@type abilitystringlevelfield
ABILITY_SLF_TOOLTIP_LEARN_EXTENDED=nil
---@type abilitystringlevelfield
ABILITY_SLF_TOOLTIP_NORMAL=nil
---@type abilitystringlevelfield
ABILITY_SLF_TOOLTIP_TURN_OFF=nil
---@type abilitystringlevelfield
ABILITY_SLF_TOOLTIP_NORMAL_EXTENDED=nil
---@type abilitystringlevelfield
ABILITY_SLF_TOOLTIP_TURN_OFF_EXTENDED=nil
---@type abilitystringlevelfield
ABILITY_SLF_NORMAL_FORM_UNIT_EME1=nil
---@type abilitystringlevelfield
ABILITY_SLF_SPAWNED_UNITS=nil
---@type abilitystringlevelfield
ABILITY_SLF_ABILITY_FOR_UNIT_CREATION=nil
---@type abilitystringlevelfield
ABILITY_SLF_NORMAL_FORM_UNIT_MIL1=nil
---@type abilitystringlevelfield
ABILITY_SLF_ALTERNATE_FORM_UNIT_MIL2=nil
---@type abilitystringlevelfield
ABILITY_SLF_BASE_ORDER_ID_ANS5=nil
---@type abilitystringlevelfield
ABILITY_SLF_MORPH_UNITS_GROUND=nil
---@type abilitystringlevelfield
ABILITY_SLF_MORPH_UNITS_AIR=nil
---@type abilitystringlevelfield
ABILITY_SLF_MORPH_UNITS_AMPHIBIOUS=nil
---@type abilitystringlevelfield
ABILITY_SLF_MORPH_UNITS_WATER=nil
---@type abilitystringlevelfield
ABILITY_SLF_UNIT_TYPE_ONE=nil
---@type abilitystringlevelfield
ABILITY_SLF_UNIT_TYPE_TWO=nil
---@type abilitystringlevelfield
ABILITY_SLF_UNIT_TYPE_SOD2=nil
---@type abilitystringlevelfield
ABILITY_SLF_SUMMON_1_UNIT_TYPE=nil
---@type abilitystringlevelfield
ABILITY_SLF_SUMMON_2_UNIT_TYPE=nil
---@type abilitystringlevelfield
ABILITY_SLF_RACE_TO_CONVERT=nil
---@type abilitystringlevelfield
ABILITY_SLF_PARTNER_UNIT_TYPE=nil
---@type abilitystringlevelfield
ABILITY_SLF_PARTNER_UNIT_TYPE_ONE=nil
---@type abilitystringlevelfield
ABILITY_SLF_PARTNER_UNIT_TYPE_TWO=nil
---@type abilitystringlevelfield
ABILITY_SLF_REQUIRED_UNIT_TYPE=nil
---@type abilitystringlevelfield
ABILITY_SLF_CONVERTED_UNIT_TYPE=nil
---@type abilitystringlevelfield
ABILITY_SLF_SPELL_LIST=nil
---@type abilitystringlevelfield
ABILITY_SLF_BASE_ORDER_ID_SPB5=nil
---@type abilitystringlevelfield
ABILITY_SLF_BASE_ORDER_ID_NCL6=nil
---@type abilitystringlevelfield
ABILITY_SLF_ABILITY_UPGRADE_1=nil
---@type abilitystringlevelfield
ABILITY_SLF_ABILITY_UPGRADE_2=nil
---@type abilitystringlevelfield
ABILITY_SLF_ABILITY_UPGRADE_3=nil
---@type abilitystringlevelfield
ABILITY_SLF_ABILITY_UPGRADE_4=nil
---@type abilitystringlevelfield
ABILITY_SLF_SPAWN_UNIT_ID_NSY2=nil
---@type itemintegerfield
ITEM_IF_LEVEL=nil
---@type itemintegerfield
ITEM_IF_NUMBER_OF_CHARGES=nil
---@type itemintegerfield
ITEM_IF_COOLDOWN_GROUP=nil
---@type itemintegerfield
ITEM_IF_MAX_HIT_POINTS=nil
---@type itemintegerfield
ITEM_IF_HIT_POINTS=nil
---@type itemintegerfield
ITEM_IF_PRIORITY=nil
---@type itemintegerfield
ITEM_IF_ARMOR_TYPE=nil
---@type itemintegerfield
ITEM_IF_TINTING_COLOR_RED=nil
---@type itemintegerfield
ITEM_IF_TINTING_COLOR_GREEN=nil
---@type itemintegerfield
ITEM_IF_TINTING_COLOR_BLUE=nil
---@type itemintegerfield
ITEM_IF_TINTING_COLOR_ALPHA=nil
---@type itemrealfield
ITEM_RF_SCALING_VALUE=nil
---@type itembooleanfield
ITEM_BF_DROPPED_WHEN_CARRIER_DIES=nil
---@type itembooleanfield
ITEM_BF_CAN_BE_DROPPED=nil
---@type itembooleanfield
ITEM_BF_PERISHABLE=nil
---@type itembooleanfield
ITEM_BF_INCLUDE_AS_RANDOM_CHOICE=nil
---@type itembooleanfield
ITEM_BF_USE_AUTOMATICALLY_WHEN_ACQUIRED=nil
---@type itembooleanfield
ITEM_BF_CAN_BE_SOLD_TO_MERCHANTS=nil
---@type itembooleanfield
ITEM_BF_ACTIVELY_USED=nil
---@type itemstringfield
ITEM_SF_MODEL_USED=nil
---@type unitintegerfield
UNIT_IF_DEFENSE_TYPE=nil
---@type unitintegerfield
UNIT_IF_ARMOR_TYPE=nil
---@type unitintegerfield
UNIT_IF_LOOPING_FADE_IN_RATE=nil
---@type unitintegerfield
UNIT_IF_LOOPING_FADE_OUT_RATE=nil
---@type unitintegerfield
UNIT_IF_AGILITY=nil
---@type unitintegerfield
UNIT_IF_INTELLIGENCE=nil
---@type unitintegerfield
UNIT_IF_STRENGTH=nil
---@type unitintegerfield
UNIT_IF_AGILITY_PERMANENT=nil
---@type unitintegerfield
UNIT_IF_INTELLIGENCE_PERMANENT=nil
---@type unitintegerfield
UNIT_IF_STRENGTH_PERMANENT=nil
---@type unitintegerfield
UNIT_IF_AGILITY_WITH_BONUS=nil
---@type unitintegerfield
UNIT_IF_INTELLIGENCE_WITH_BONUS=nil
---@type unitintegerfield
UNIT_IF_STRENGTH_WITH_BONUS=nil
---@type unitintegerfield
UNIT_IF_GOLD_BOUNTY_AWARDED_NUMBER_OF_DICE=nil
---@type unitintegerfield
UNIT_IF_GOLD_BOUNTY_AWARDED_BASE=nil
---@type unitintegerfield
UNIT_IF_GOLD_BOUNTY_AWARDED_SIDES_PER_DIE=nil
---@type unitintegerfield
UNIT_IF_LUMBER_BOUNTY_AWARDED_NUMBER_OF_DICE=nil
---@type unitintegerfield
UNIT_IF_LUMBER_BOUNTY_AWARDED_BASE=nil
---@type unitintegerfield
UNIT_IF_LUMBER_BOUNTY_AWARDED_SIDES_PER_DIE=nil
---@type unitintegerfield
UNIT_IF_LEVEL=nil
---@type unitintegerfield
UNIT_IF_FORMATION_RANK=nil
---@type unitintegerfield
UNIT_IF_ORIENTATION_INTERPOLATION=nil
---@type unitintegerfield
UNIT_IF_ELEVATION_SAMPLE_POINTS=nil
---@type unitintegerfield
UNIT_IF_TINTING_COLOR_RED=nil
---@type unitintegerfield
UNIT_IF_TINTING_COLOR_GREEN=nil
---@type unitintegerfield
UNIT_IF_TINTING_COLOR_BLUE=nil
---@type unitintegerfield
UNIT_IF_TINTING_COLOR_ALPHA=nil
---@type unitintegerfield
UNIT_IF_MOVE_TYPE=nil
---@type unitintegerfield
UNIT_IF_TARGETED_AS=nil
---@type unitintegerfield
UNIT_IF_UNIT_CLASSIFICATION=nil
---@type unitintegerfield
UNIT_IF_HIT_POINTS_REGENERATION_TYPE=nil
---@type unitintegerfield
UNIT_IF_PLACEMENT_PREVENTED_BY=nil
---@type unitintegerfield
UNIT_IF_PRIMARY_ATTRIBUTE=nil
---@type unitrealfield
UNIT_RF_STRENGTH_PER_LEVEL=nil
---@type unitrealfield
UNIT_RF_AGILITY_PER_LEVEL=nil
---@type unitrealfield
UNIT_RF_INTELLIGENCE_PER_LEVEL=nil
---@type unitrealfield
UNIT_RF_HIT_POINTS_REGENERATION_RATE=nil
---@type unitrealfield
UNIT_RF_MANA_REGENERATION=nil
---@type unitrealfield
UNIT_RF_DEATH_TIME=nil
---@type unitrealfield
UNIT_RF_FLY_HEIGHT=nil
---@type unitrealfield
UNIT_RF_FLY_MAX_HEIGHT=nil
---@type unitrealfield
UNIT_RF_TURN_RATE=nil
---@type unitrealfield
UNIT_RF_ELEVATION_SAMPLE_RADIUS=nil
---@type unitrealfield
UNIT_RF_FOG_OF_WAR_SAMPLE_RADIUS=nil
---@type unitrealfield
UNIT_RF_MAXIMUM_PITCH_ANGLE_DEGREES=nil
---@type unitrealfield
UNIT_RF_MAXIMUM_ROLL_ANGLE_DEGREES=nil
---@type unitrealfield
UNIT_RF_SCALING_VALUE=nil
---@type unitrealfield
UNIT_RF_ANIMATION_RUN_SPEED=nil
---@type unitrealfield
UNIT_RF_SELECTION_SCALE=nil
---@type unitrealfield
UNIT_RF_SELECTION_CIRCLE_HEIGHT=nil
---@type unitrealfield
UNIT_RF_SHADOW_IMAGE_HEIGHT=nil
---@type unitrealfield
UNIT_RF_SHADOW_IMAGE_WIDTH=nil
---@type unitrealfield
UNIT_RF_SHADOW_IMAGE_CENTER_X=nil
---@type unitrealfield
UNIT_RF_SHADOW_IMAGE_CENTER_Y=nil
---@type unitrealfield
UNIT_RF_ANIMATION_WALK_SPEED=nil
---@type unitrealfield
UNIT_RF_DEFENSE=nil
---@type unitrealfield
UNIT_RF_SIGHT_RADIUS=nil
---@type unitrealfield
UNIT_RF_PRIORITY=nil
---@type unitrealfield
UNIT_RF_SPEED=nil
---@type unitrealfield
UNIT_RF_OCCLUDER_HEIGHT=nil
---@type unitrealfield
UNIT_RF_HP=nil
---@type unitrealfield
UNIT_RF_MANA=nil
---@type unitrealfield
UNIT_RF_ACQUISITION_RANGE=nil
---@type unitrealfield
UNIT_RF_CAST_BACK_SWING=nil
---@type unitrealfield
UNIT_RF_CAST_POINT=nil
---@type unitrealfield
UNIT_RF_MINIMUM_ATTACK_RANGE=nil
---@type unitbooleanfield
UNIT_BF_RAISABLE=nil
---@type unitbooleanfield
UNIT_BF_DECAYABLE=nil
---@type unitbooleanfield
UNIT_BF_IS_A_BUILDING=nil
---@type unitbooleanfield
UNIT_BF_USE_EXTENDED_LINE_OF_SIGHT=nil
---@type unitbooleanfield
UNIT_BF_NEUTRAL_BUILDING_SHOWS_MINIMAP_ICON=nil
---@type unitbooleanfield
UNIT_BF_HERO_HIDE_HERO_INTERFACE_ICON=nil
---@type unitbooleanfield
UNIT_BF_HERO_HIDE_HERO_MINIMAP_DISPLAY=nil
---@type unitbooleanfield
UNIT_BF_HERO_HIDE_HERO_DEATH_MESSAGE=nil
---@type unitbooleanfield
UNIT_BF_HIDE_MINIMAP_DISPLAY=nil
---@type unitbooleanfield
UNIT_BF_SCALE_PROJECTILES=nil
---@type unitbooleanfield
UNIT_BF_SELECTION_CIRCLE_ON_WATER=nil
---@type unitbooleanfield
UNIT_BF_HAS_WATER_SHADOW=nil
---@type unitstringfield
UNIT_SF_NAME=nil
---@type unitstringfield
UNIT_SF_PROPER_NAMES=nil
---@type unitstringfield
UNIT_SF_GROUND_TEXTURE=nil
---@type unitstringfield
UNIT_SF_SHADOW_IMAGE_UNIT=nil
---@type unitweaponintegerfield
UNIT_WEAPON_IF_ATTACK_DAMAGE_NUMBER_OF_DICE=nil
---@type unitweaponintegerfield
UNIT_WEAPON_IF_ATTACK_DAMAGE_BASE=nil
---@type unitweaponintegerfield
UNIT_WEAPON_IF_ATTACK_DAMAGE_SIDES_PER_DIE=nil
---@type unitweaponintegerfield
UNIT_WEAPON_IF_ATTACK_MAXIMUM_NUMBER_OF_TARGETS=nil
---@type unitweaponintegerfield
UNIT_WEAPON_IF_ATTACK_ATTACK_TYPE=nil
---@type unitweaponintegerfield
UNIT_WEAPON_IF_ATTACK_WEAPON_SOUND=nil
---@type unitweaponintegerfield
UNIT_WEAPON_IF_ATTACK_AREA_OF_EFFECT_TARGETS=nil
---@type unitweaponintegerfield
UNIT_WEAPON_IF_ATTACK_TARGETS_ALLOWED=nil
---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_BACKSWING_POINT=nil
---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_DAMAGE_POINT=nil
---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_BASE_COOLDOWN=nil
---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_DAMAGE_LOSS_FACTOR=nil
---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_DAMAGE_FACTOR_MEDIUM=nil
---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_DAMAGE_FACTOR_SMALL=nil
---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_DAMAGE_SPILL_DISTANCE=nil
---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_DAMAGE_SPILL_RADIUS=nil
---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_PROJECTILE_SPEED=nil
---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_PROJECTILE_ARC=nil
---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_FULL_DAMAGE=nil
---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_MEDIUM_DAMAGE=nil
---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_SMALL_DAMAGE=nil
---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_RANGE=nil
---@type unitweaponbooleanfield
UNIT_WEAPON_BF_ATTACK_SHOW_UI=nil
---@type unitweaponbooleanfield
UNIT_WEAPON_BF_ATTACKS_ENABLED=nil
---@type unitweaponbooleanfield
UNIT_WEAPON_BF_ATTACK_PROJECTILE_HOMING_ENABLED=nil
---@type unitweaponstringfield
UNIT_WEAPON_SF_ATTACK_PROJECTILE_ART=nil
---@type movetype
MOVE_TYPE_UNKNOWN=nil
---@type movetype
MOVE_TYPE_FOOT=nil
---@type movetype
MOVE_TYPE_FLY=nil
---@type movetype
MOVE_TYPE_HORSE=nil
---@type movetype
MOVE_TYPE_HOVER=nil
---@type movetype
MOVE_TYPE_FLOAT=nil
---@type movetype
MOVE_TYPE_AMPHIBIOUS=nil
---@type movetype
MOVE_TYPE_UNBUILDABLE=nil
---@type targetflag
TARGET_FLAG_NONE=nil
---@type targetflag
TARGET_FLAG_GROUND=nil
---@type targetflag
TARGET_FLAG_AIR=nil
---@type targetflag
TARGET_FLAG_STRUCTURE=nil
---@type targetflag
TARGET_FLAG_WARD=nil
---@type targetflag
TARGET_FLAG_ITEM=nil
---@type targetflag
TARGET_FLAG_TREE=nil
---@type targetflag
TARGET_FLAG_WALL=nil
---@type targetflag
TARGET_FLAG_DEBRIS=nil
---@type targetflag
TARGET_FLAG_DECORATION=nil
---@type targetflag
TARGET_FLAG_BRIDGE=nil
---@type defensetype
DEFENSE_TYPE_LIGHT=nil
---@type defensetype
DEFENSE_TYPE_MEDIUM=nil
---@type defensetype
DEFENSE_TYPE_LARGE=nil
---@type defensetype
DEFENSE_TYPE_FORT=nil
---@type defensetype
DEFENSE_TYPE_NORMAL=nil
---@type defensetype
DEFENSE_TYPE_HERO=nil
---@type defensetype
DEFENSE_TYPE_DIVINE=nil
---@type defensetype
DEFENSE_TYPE_NONE=nil
---@type heroattribute
HERO_ATTRIBUTE_STR=nil
---@type heroattribute
HERO_ATTRIBUTE_INT=nil
---@type heroattribute
HERO_ATTRIBUTE_AGI=nil
---@type armortype
ARMOR_TYPE_WHOKNOWS=nil
---@type armortype
ARMOR_TYPE_FLESH=nil
---@type armortype
ARMOR_TYPE_METAL=nil
---@type armortype
ARMOR_TYPE_WOOD=nil
---@type armortype
ARMOR_TYPE_ETHREAL=nil
---@type armortype
ARMOR_TYPE_STONE=nil
---@type regentype
REGENERATION_TYPE_NONE=nil
---@type regentype
REGENERATION_TYPE_ALWAYS=nil
---@type regentype
REGENERATION_TYPE_BLIGHT=nil
---@type regentype
REGENERATION_TYPE_DAY=nil
---@type regentype
REGENERATION_TYPE_NIGHT=nil
---@type unitcategory
UNIT_CATEGORY_GIANT=nil
---@type unitcategory
UNIT_CATEGORY_UNDEAD=nil
---@type unitcategory
UNIT_CATEGORY_SUMMONED=nil
---@type unitcategory
UNIT_CATEGORY_MECHANICAL=nil
---@type unitcategory
UNIT_CATEGORY_PEON=nil
---@type unitcategory
UNIT_CATEGORY_SAPPER=nil
---@type unitcategory
UNIT_CATEGORY_TOWNHALL=nil
---@type unitcategory
UNIT_CATEGORY_ANCIENT=nil
---@type unitcategory
UNIT_CATEGORY_NEUTRAL=nil
---@type unitcategory
UNIT_CATEGORY_WARD=nil
---@type unitcategory
UNIT_CATEGORY_STANDON=nil
---@type unitcategory
UNIT_CATEGORY_TAUREN=nil
---@type pathingflag
PATHING_FLAG_UNWALKABLE=nil
---@type pathingflag
PATHING_FLAG_UNFLYABLE=nil
---@type pathingflag
PATHING_FLAG_UNBUILDABLE=nil
---@type pathingflag
PATHING_FLAG_UNPEONHARVEST=nil
---@type pathingflag
PATHING_FLAG_BLIGHTED=nil
---@type pathingflag
PATHING_FLAG_UNFLOATABLE=nil
---@type pathingflag
PATHING_FLAG_UNAMPHIBIOUS=nil
---@type pathingflag
PATHING_FLAG_UNITEMPLACABLE=nil
---@param i integer
---@return race
function ConvertRace(i) end

---@param i integer
---@return alliancetype
function ConvertAllianceType(i) end

---@param i integer
---@return racepreference
function ConvertRacePref(i) end

---@param i integer
---@return igamestate
function ConvertIGameState(i) end

---@param i integer
---@return fgamestate
function ConvertFGameState(i) end

---@param i integer
---@return playerstate
function ConvertPlayerState(i) end

---@param i integer
---@return playerscore
function ConvertPlayerScore(i) end

---@param i integer
---@return playergameresult
function ConvertPlayerGameResult(i) end

---@param i integer
---@return unitstate
function ConvertUnitState(i) end

---@param i integer
---@return aidifficulty
function ConvertAIDifficulty(i) end

---@param i integer
---@return gameevent
function ConvertGameEvent(i) end

---@param i integer
---@return playerevent
function ConvertPlayerEvent(i) end

---@param i integer
---@return playerunitevent
function ConvertPlayerUnitEvent(i) end

---@param i integer
---@return widgetevent
function ConvertWidgetEvent(i) end

---@param i integer
---@return dialogevent
function ConvertDialogEvent(i) end

---@param i integer
---@return unitevent
function ConvertUnitEvent(i) end

---@param i integer
---@return limitop
function ConvertLimitOp(i) end

---@param i integer
---@return unittype
function ConvertUnitType(i) end

---@param i integer
---@return gamespeed
function ConvertGameSpeed(i) end

---@param i integer
---@return placement
function ConvertPlacement(i) end

---@param i integer
---@return startlocprio
function ConvertStartLocPrio(i) end

---@param i integer
---@return gamedifficulty
function ConvertGameDifficulty(i) end

---@param i integer
---@return gametype
function ConvertGameType(i) end

---@param i integer
---@return mapflag
function ConvertMapFlag(i) end

---@param i integer
---@return mapvisibility
function ConvertMapVisibility(i) end

---@param i integer
---@return mapsetting
function ConvertMapSetting(i) end

---@param i integer
---@return mapdensity
function ConvertMapDensity(i) end

---@param i integer
---@return mapcontrol
function ConvertMapControl(i) end

---@param i integer
---@return playercolor
function ConvertPlayerColor(i) end

---@param i integer
---@return playerslotstate
function ConvertPlayerSlotState(i) end

---@param i integer
---@return volumegroup
function ConvertVolumeGroup(i) end

---@param i integer
---@return camerafield
function ConvertCameraField(i) end

---@param i integer
---@return blendmode
function ConvertBlendMode(i) end

---@param i integer
---@return raritycontrol
function ConvertRarityControl(i) end

---@param i integer
---@return texmapflags
function ConvertTexMapFlags(i) end

---@param i integer
---@return fogstate
function ConvertFogState(i) end

---@param i integer
---@return effecttype
function ConvertEffectType(i) end

---@param i integer
---@return version
function ConvertVersion(i) end

---@param i integer
---@return itemtype
function ConvertItemType(i) end

---@param i integer
---@return attacktype
function ConvertAttackType(i) end

---@param i integer
---@return damagetype
function ConvertDamageType(i) end

---@param i integer
---@return weapontype
function ConvertWeaponType(i) end

---@param i integer
---@return soundtype
function ConvertSoundType(i) end

---@param i integer
---@return pathingtype
function ConvertPathingType(i) end

---@param i integer
---@return mousebuttontype
function ConvertMouseButtonType(i) end

---@param i integer
---@return animtype
function ConvertAnimType(i) end

---@param i integer
---@return subanimtype
function ConvertSubAnimType(i) end

---@param i integer
---@return originframetype
function ConvertOriginFrameType(i) end

---@param i integer
---@return framepointtype
function ConvertFramePointType(i) end

---@param i integer
---@return textaligntype
function ConvertTextAlignType(i) end

---@param i integer
---@return frameeventtype
function ConvertFrameEventType(i) end

---@param i integer
---@return oskeytype
function ConvertOsKeyType(i) end

---@param i integer
---@return abilityintegerfield
function ConvertAbilityIntegerField(i) end

---@param i integer
---@return abilityrealfield
function ConvertAbilityRealField(i) end

---@param i integer
---@return abilitybooleanfield
function ConvertAbilityBooleanField(i) end

---@param i integer
---@return abilitystringfield
function ConvertAbilityStringField(i) end

---@param i integer
---@return abilityintegerlevelfield
function ConvertAbilityIntegerLevelField(i) end

---@param i integer
---@return abilityreallevelfield
function ConvertAbilityRealLevelField(i) end

---@param i integer
---@return abilitybooleanlevelfield
function ConvertAbilityBooleanLevelField(i) end

---@param i integer
---@return abilitystringlevelfield
function ConvertAbilityStringLevelField(i) end

---@param i integer
---@return abilityintegerlevelarrayfield
function ConvertAbilityIntegerLevelArrayField(i) end

---@param i integer
---@return abilityreallevelarrayfield
function ConvertAbilityRealLevelArrayField(i) end

---@param i integer
---@return abilitybooleanlevelarrayfield
function ConvertAbilityBooleanLevelArrayField(i) end

---@param i integer
---@return abilitystringlevelarrayfield
function ConvertAbilityStringLevelArrayField(i) end

---@param i integer
---@return unitintegerfield
function ConvertUnitIntegerField(i) end

---@param i integer
---@return unitrealfield
function ConvertUnitRealField(i) end

---@param i integer
---@return unitbooleanfield
function ConvertUnitBooleanField(i) end

---@param i integer
---@return unitstringfield
function ConvertUnitStringField(i) end

---@param i integer
---@return unitweaponintegerfield
function ConvertUnitWeaponIntegerField(i) end

---@param i integer
---@return unitweaponrealfield
function ConvertUnitWeaponRealField(i) end

---@param i integer
---@return unitweaponbooleanfield
function ConvertUnitWeaponBooleanField(i) end

---@param i integer
---@return unitweaponstringfield
function ConvertUnitWeaponStringField(i) end

---@param i integer
---@return itemintegerfield
function ConvertItemIntegerField(i) end

---@param i integer
---@return itemrealfield
function ConvertItemRealField(i) end

---@param i integer
---@return itembooleanfield
function ConvertItemBooleanField(i) end

---@param i integer
---@return itemstringfield
function ConvertItemStringField(i) end

---@param i integer
---@return movetype
function ConvertMoveType(i) end

---@param i integer
---@return targetflag
function ConvertTargetFlag(i) end

---@param i integer
---@return armortype
function ConvertArmorType(i) end

---@param i integer
---@return heroattribute
function ConvertHeroAttribute(i) end

---@param i integer
---@return defensetype
function ConvertDefenseType(i) end

---@param i integer
---@return regentype
function ConvertRegenType(i) end

---@param i integer
---@return unitcategory
function ConvertUnitCategory(i) end

---@param i integer
---@return pathingflag
function ConvertPathingFlag(i) end

---@param orderIdString string
---@return integer
function OrderId(orderIdString) end

---@param orderId integer
---@return string
function OrderId2String(orderId) end

---@param unitIdString string
---@return integer
function UnitId(unitIdString) end

---@param unitId integer
---@return string
function UnitId2String(unitId) end

---@param abilityIdString string
---@return integer
function AbilityId(abilityIdString) end

---@param abilityId integer
---@return string
function AbilityId2String(abilityId) end

---@param objectId integer
---@return string
function GetObjectName(objectId) end

---@return integer
function GetBJMaxPlayers() end

---@return integer
function GetBJPlayerNeutralVictim() end

---@return integer
function GetBJPlayerNeutralExtra() end

---@return integer
function GetBJMaxPlayerSlots() end

---@return integer
function GetPlayerNeutralPassive() end

---@return integer
function GetPlayerNeutralAggressive() end

---@param degrees number
---@return number
function Deg2Rad(degrees) end

---@param radians number
---@return number
function Rad2Deg(radians) end

---@param radians number
---@return number
function Sin(radians) end

---@param radians number
---@return number
function Cos(radians) end

---@param radians number
---@return number
function Tan(radians) end

---@param y number
---@return number
function Asin(y) end

---@param x number
---@return number
function Acos(x) end

---@param x number
---@return number
function Atan(x) end

---@param y number
---@param x number
---@return number
function Atan2(y, x) end

---@param x number
---@return number
function SquareRoot(x) end

---@param x number
---@param power number
---@return number
function Pow(x, power) end

---@param r number
---@return integer
function MathRound(r) end

---@param i integer
---@return number
function I2R(i) end

---@param r number
---@return integer
function R2I(r) end

---@param i integer
---@return string
function I2S(i) end

---@param r number
---@return string
function R2S(r) end

---@param r number
---@param width integer
---@param precision integer
---@return string
function R2SW(r, width, precision) end

---@param s string
---@return integer
function S2I(s) end

---@param s string
---@return number
function S2R(s) end

---@param h handle
---@return integer
function GetHandleId(h) end

---@param source string
---@param start integer
---@param end integer
---@return string
function SubString(source, strStart, strEnd) end

---@param s string
---@return integer
function StringLength(s) end

---@param source string
---@param upper boolean
---@return string
function StringCase(source, upper) end

---@param s string
---@return integer
function StringHash(s) end

---@param source string
---@return string
function GetLocalizedString(source) end

---@param source string
---@return integer
function GetLocalizedHotkey(source) end

---@param name string
function SetMapName(name) end

---@param description string
function SetMapDescription(description) end

---@param teamcount integer
function SetTeams(teamcount) end

---@param playercount integer
function SetPlayers(playercount) end

---@param whichStartLoc integer
---@param x number
---@param y number
function DefineStartLocation(whichStartLoc, x, y) end

---@param whichStartLoc integer
---@param whichLocation location
function DefineStartLocationLoc(whichStartLoc, whichLocation) end

---@param whichStartLoc integer
---@param prioSlotCount integer
function SetStartLocPrioCount(whichStartLoc, prioSlotCount) end

---@param whichStartLoc integer
---@param prioSlotIndex integer
---@param otherStartLocIndex integer
---@param priority startlocprio
function SetStartLocPrio(whichStartLoc, prioSlotIndex, otherStartLocIndex, priority) end

---@param whichStartLoc integer
---@param prioSlotIndex integer
---@return integer
function GetStartLocPrioSlot(whichStartLoc, prioSlotIndex) end

---@param whichStartLoc integer
---@param prioSlotIndex integer
---@return startlocprio
function GetStartLocPrio(whichStartLoc, prioSlotIndex) end

---@param whichStartLoc integer
---@param prioSlotCount integer
function SetEnemyStartLocPrioCount(whichStartLoc, prioSlotCount) end

---@param whichStartLoc integer
---@param prioSlotIndex integer
---@param otherStartLocIndex integer
---@param priority startlocprio
function SetEnemyStartLocPrio(whichStartLoc, prioSlotIndex, otherStartLocIndex, priority) end

---@param whichGameType gametype
---@param value boolean
function SetGameTypeSupported(whichGameType, value) end

---@param whichMapFlag mapflag
---@param value boolean
function SetMapFlag(whichMapFlag, value) end

---@param whichPlacementType placement
function SetGamePlacement(whichPlacementType) end

---@param whichspeed gamespeed
function SetGameSpeed(whichspeed) end

---@param whichdifficulty gamedifficulty
function SetGameDifficulty(whichdifficulty) end

---@param whichdensity mapdensity
function SetResourceDensity(whichdensity) end

---@param whichdensity mapdensity
function SetCreatureDensity(whichdensity) end

---@return integer
function GetTeams() end

---@return integer
function GetPlayers() end

---@param whichGameType gametype
---@return boolean
function IsGameTypeSupported(whichGameType) end

---@return gametype
function GetGameTypeSelected() end

---@param whichMapFlag mapflag
---@return boolean
function IsMapFlagSet(whichMapFlag) end

---@return placement
function GetGamePlacement() end

---@return gamespeed
function GetGameSpeed() end

---@return gamedifficulty
function GetGameDifficulty() end

---@return mapdensity
function GetResourceDensity() end

---@return mapdensity
function GetCreatureDensity() end

---@param whichStartLocation integer
---@return number
function GetStartLocationX(whichStartLocation) end

---@param whichStartLocation integer
---@return number
function GetStartLocationY(whichStartLocation) end

---@param whichStartLocation integer
---@return location
function GetStartLocationLoc(whichStartLocation) end

---@param whichPlayer player
---@param whichTeam integer
function SetPlayerTeam(whichPlayer, whichTeam) end

---@param whichPlayer player
---@param startLocIndex integer
function SetPlayerStartLocation(whichPlayer, startLocIndex) end

---@param whichPlayer player
---@param startLocIndex integer
function ForcePlayerStartLocation(whichPlayer, startLocIndex) end

---@param whichPlayer player
---@param color playercolor
function SetPlayerColor(whichPlayer, color) end

---@param sourcePlayer player
---@param otherPlayer player
---@param whichAllianceSetting alliancetype
---@param value boolean
function SetPlayerAlliance(sourcePlayer, otherPlayer, whichAllianceSetting, value) end

---@param sourcePlayer player
---@param otherPlayer player
---@param whichResource playerstate
---@param rate integer
function SetPlayerTaxRate(sourcePlayer, otherPlayer, whichResource, rate) end

---@param whichPlayer player
---@param whichRacePreference racepreference
function SetPlayerRacePreference(whichPlayer, whichRacePreference) end

---@param whichPlayer player
---@param value boolean
function SetPlayerRaceSelectable(whichPlayer, value) end

---@param whichPlayer player
---@param controlType mapcontrol
function SetPlayerController(whichPlayer, controlType) end

---@param whichPlayer player
---@param name string
function SetPlayerName(whichPlayer, name) end

---@param whichPlayer player
---@param flag boolean
function SetPlayerOnScoreScreen(whichPlayer, flag) end

---@param whichPlayer player
---@return integer
function GetPlayerTeam(whichPlayer) end

---@param whichPlayer player
---@return integer
function GetPlayerStartLocation(whichPlayer) end

---@param whichPlayer player
---@return playercolor
function GetPlayerColor(whichPlayer) end

---@param whichPlayer player
---@return boolean
function GetPlayerSelectable(whichPlayer) end

---@param whichPlayer player
---@return mapcontrol
function GetPlayerController(whichPlayer) end

---@param whichPlayer player
---@return playerslotstate
function GetPlayerSlotState(whichPlayer) end

---@param sourcePlayer player
---@param otherPlayer player
---@param whichResource playerstate
---@return integer
function GetPlayerTaxRate(sourcePlayer, otherPlayer, whichResource) end

---@param whichPlayer player
---@param pref racepreference
---@return boolean
function IsPlayerRacePrefSet(whichPlayer, pref) end

---@param whichPlayer player
---@return string
function GetPlayerName(whichPlayer) end

---@return timer
function CreateTimer() end

---@param whichTimer timer
function DestroyTimer(whichTimer) end

---@param whichTimer timer
---@param timeout number
---@param periodic boolean
---@param handlerFunc fun()
function TimerStart(whichTimer, timeout, periodic, handlerFunc) end

---@param whichTimer timer
---@return number
function TimerGetElapsed(whichTimer) end

---@param whichTimer timer
---@return number
function TimerGetRemaining(whichTimer) end

---@param whichTimer timer
---@return number
function TimerGetTimeout(whichTimer) end

---@param whichTimer timer
function PauseTimer(whichTimer) end

---@param whichTimer timer
function ResumeTimer(whichTimer) end

---@return timer
function GetExpiredTimer() end

---@return group
function CreateGroup() end

---@param whichGroup group
function DestroyGroup(whichGroup) end

---@param whichGroup group
---@param whichUnit unit
---@return boolean
function GroupAddUnit(whichGroup, whichUnit) end

---@param whichGroup group
---@param whichUnit unit
---@return boolean
function GroupRemoveUnit(whichGroup, whichUnit) end

---@param whichGroup group
---@param addGroup group
---@return integer
function BlzGroupAddGroupFast(whichGroup, addGroup) end

---@param whichGroup group
---@param removeGroup group
---@return integer
function BlzGroupRemoveGroupFast(whichGroup, removeGroup) end

---@param whichGroup group
function GroupClear(whichGroup) end

---@param whichGroup group
---@return integer
function BlzGroupGetSize(whichGroup) end

---@param whichGroup group
---@param index integer
---@return unit
function BlzGroupUnitAt(whichGroup, index) end

---@param whichGroup group
---@param unitname string
---@param filter boolexpr
function GroupEnumUnitsOfType(whichGroup, unitname, filter) end

---@param whichGroup group
---@param whichPlayer player
---@param filter boolexpr
function GroupEnumUnitsOfPlayer(whichGroup, whichPlayer, filter) end

---@param whichGroup group
---@param unitname string
---@param filter boolexpr
---@param countLimit integer
function GroupEnumUnitsOfTypeCounted(whichGroup, unitname, filter, countLimit) end

---@param whichGroup group
---@param r rect
---@param filter boolexpr
function GroupEnumUnitsInRect(whichGroup, r, filter) end

---@param whichGroup group
---@param r rect
---@param filter boolexpr
---@param countLimit integer
function GroupEnumUnitsInRectCounted(whichGroup, r, filter, countLimit) end

---@param whichGroup group
---@param x number
---@param y number
---@param radius number
---@param filter boolexpr
function GroupEnumUnitsInRange(whichGroup, x, y, radius, filter) end

---@param whichGroup group
---@param whichLocation location
---@param radius number
---@param filter boolexpr
function GroupEnumUnitsInRangeOfLoc(whichGroup, whichLocation, radius, filter) end

---@param whichGroup group
---@param x number
---@param y number
---@param radius number
---@param filter boolexpr
---@param countLimit integer
function GroupEnumUnitsInRangeCounted(whichGroup, x, y, radius, filter, countLimit) end

---@param whichGroup group
---@param whichLocation location
---@param radius number
---@param filter boolexpr
---@param countLimit integer
function GroupEnumUnitsInRangeOfLocCounted(whichGroup, whichLocation, radius, filter, countLimit) end

---@param whichGroup group
---@param whichPlayer player
---@param filter boolexpr
function GroupEnumUnitsSelected(whichGroup, whichPlayer, filter) end

---@param whichGroup group
---@param order string
---@return boolean
function GroupImmediateOrder(whichGroup, order) end

---@param whichGroup group
---@param order integer
---@return boolean
function GroupImmediateOrderById(whichGroup, order) end

---@param whichGroup group
---@param order string
---@param x number
---@param y number
---@return boolean
function GroupPointOrder(whichGroup, order, x, y) end

---@param whichGroup group
---@param order string
---@param whichLocation location
---@return boolean
function GroupPointOrderLoc(whichGroup, order, whichLocation) end

---@param whichGroup group
---@param order integer
---@param x number
---@param y number
---@return boolean
function GroupPointOrderById(whichGroup, order, x, y) end

---@param whichGroup group
---@param order integer
---@param whichLocation location
---@return boolean
function GroupPointOrderByIdLoc(whichGroup, order, whichLocation) end

---@param whichGroup group
---@param order string
---@param targetWidget widget
---@return boolean
function GroupTargetOrder(whichGroup, order, targetWidget) end

---@param whichGroup group
---@param order integer
---@param targetWidget widget
---@return boolean
function GroupTargetOrderById(whichGroup, order, targetWidget) end

---@param whichGroup group
---@param callback fun()
function ForGroup(whichGroup, callback) end

---@param whichGroup group
---@return unit
function FirstOfGroup(whichGroup) end

---@return force
function CreateForce() end

---@param whichForce force
function DestroyForce(whichForce) end

---@param whichForce force
---@param whichPlayer player
function ForceAddPlayer(whichForce, whichPlayer) end

---@param whichForce force
---@param whichPlayer player
function ForceRemovePlayer(whichForce, whichPlayer) end

---@param whichForce force
---@param whichPlayer player
---@return boolean
function BlzForceHasPlayer(whichForce, whichPlayer) end

---@param whichForce force
function ForceClear(whichForce) end

---@param whichForce force
---@param filter boolexpr
function ForceEnumPlayers(whichForce, filter) end

---@param whichForce force
---@param filter boolexpr
---@param countLimit integer
function ForceEnumPlayersCounted(whichForce, filter, countLimit) end

---@param whichForce force
---@param whichPlayer player
---@param filter boolexpr
function ForceEnumAllies(whichForce, whichPlayer, filter) end

---@param whichForce force
---@param whichPlayer player
---@param filter boolexpr
function ForceEnumEnemies(whichForce, whichPlayer, filter) end

---@param whichForce force
---@param callback fun()
function ForForce(whichForce, callback) end

---@param minx number
---@param miny number
---@param maxx number
---@param maxy number
---@return rect
function Rect(minx, miny, maxx, maxy) end

---@param min location
---@param max location
---@return rect
function RectFromLoc(min, max) end

---@param whichRect rect
function RemoveRect(whichRect) end

---@param whichRect rect
---@param minx number
---@param miny number
---@param maxx number
---@param maxy number
function SetRect(whichRect, minx, miny, maxx, maxy) end

---@param whichRect rect
---@param min location
---@param max location
function SetRectFromLoc(whichRect, min, max) end

---@param whichRect rect
---@param newCenterX number
---@param newCenterY number
function MoveRectTo(whichRect, newCenterX, newCenterY) end

---@param whichRect rect
---@param newCenterLoc location
function MoveRectToLoc(whichRect, newCenterLoc) end

---@param whichRect rect
---@return number
function GetRectCenterX(whichRect) end

---@param whichRect rect
---@return number
function GetRectCenterY(whichRect) end

---@param whichRect rect
---@return number
function GetRectMinX(whichRect) end

---@param whichRect rect
---@return number
function GetRectMinY(whichRect) end

---@param whichRect rect
---@return number
function GetRectMaxX(whichRect) end

---@param whichRect rect
---@return number
function GetRectMaxY(whichRect) end

---@return region
function CreateRegion() end

---@param whichRegion region
function RemoveRegion(whichRegion) end

---@param whichRegion region
---@param r rect
function RegionAddRect(whichRegion, r) end

---@param whichRegion region
---@param r rect
function RegionClearRect(whichRegion, r) end

---@param whichRegion region
---@param x number
---@param y number
function RegionAddCell(whichRegion, x, y) end

---@param whichRegion region
---@param whichLocation location
function RegionAddCellAtLoc(whichRegion, whichLocation) end

---@param whichRegion region
---@param x number
---@param y number
function RegionClearCell(whichRegion, x, y) end

---@param whichRegion region
---@param whichLocation location
function RegionClearCellAtLoc(whichRegion, whichLocation) end

---@param x number
---@param y number
---@return location
function Location(x, y) end

---@param whichLocation location
function RemoveLocation(whichLocation) end

---@param whichLocation location
---@param newX number
---@param newY number
function MoveLocation(whichLocation, newX, newY) end

---@param whichLocation location
---@return number
function GetLocationX(whichLocation) end

---@param whichLocation location
---@return number
function GetLocationY(whichLocation) end

---@param whichLocation location
---@return number
function GetLocationZ(whichLocation) end

---@param whichRegion region
---@param whichUnit unit
---@return boolean
function IsUnitInRegion(whichRegion, whichUnit) end

---@param whichRegion region
---@param x number
---@param y number
---@return boolean
function IsPointInRegion(whichRegion, x, y) end

---@param whichRegion region
---@param whichLocation location
---@return boolean
function IsLocationInRegion(whichRegion, whichLocation) end

---@return rect
function GetWorldBounds() end

---@return trigger
function CreateTrigger() end

---@param whichTrigger trigger
function DestroyTrigger(whichTrigger) end

---@param whichTrigger trigger
function ResetTrigger(whichTrigger) end

---@param whichTrigger trigger
function EnableTrigger(whichTrigger) end

---@param whichTrigger trigger
function DisableTrigger(whichTrigger) end

---@param whichTrigger trigger
---@return boolean
function IsTriggerEnabled(whichTrigger) end

---@param whichTrigger trigger
---@param flag boolean
function TriggerWaitOnSleeps(whichTrigger, flag) end

---@param whichTrigger trigger
---@return boolean
function IsTriggerWaitOnSleeps(whichTrigger) end

---@return unit
function GetFilterUnit() end

---@return unit
function GetEnumUnit() end

---@return destructable
function GetFilterDestructable() end

---@return destructable
function GetEnumDestructable() end

---@return item
function GetFilterItem() end

---@return item
function GetEnumItem() end

---@param taggedString string
---@return string
function ParseTags(taggedString) end

---@return player
function GetFilterPlayer() end

---@return player
function GetEnumPlayer() end

---@return trigger
function GetTriggeringTrigger() end

---@return eventid
function GetTriggerEventId() end

---@param whichTrigger trigger
---@return integer
function GetTriggerEvalCount(whichTrigger) end

---@param whichTrigger trigger
---@return integer
function GetTriggerExecCount(whichTrigger) end

---@param funcName string
function ExecuteFunc(funcName) end

---@param operandA boolexpr
---@param operandB boolexpr
---@return boolexpr
function And(operandA, operandB) end

---@param operandA boolexpr
---@param operandB boolexpr
---@return boolexpr
function Or(operandA, operandB) end

---@param operand boolexpr
---@return boolexpr
function Not(operand) end

---@param func fun()
---@return conditionfunc
function Condition(func) end

---@param c conditionfunc
function DestroyCondition(c) end

---@param func fun()
---@return filterfunc
function Filter(func) end

---@param f filterfunc
function DestroyFilter(f) end

---@param e boolexpr
function DestroyBoolExpr(e) end

---@param whichTrigger trigger
---@param varName string
---@param opcode limitop
---@param limitval number
---@return event
function TriggerRegisterVariableEvent(whichTrigger, varName, opcode, limitval) end

---@param whichTrigger trigger
---@param timeout number
---@param periodic boolean
---@return event
function TriggerRegisterTimerEvent(whichTrigger, timeout, periodic) end

---@param whichTrigger trigger
---@param t timer
---@return event
function TriggerRegisterTimerExpireEvent(whichTrigger, t) end

---@param whichTrigger trigger
---@param whichState gamestate
---@param opcode limitop
---@param limitval number
---@return event
function TriggerRegisterGameStateEvent(whichTrigger, whichState, opcode, limitval) end

---@param whichTrigger trigger
---@param whichDialog dialog
---@return event
function TriggerRegisterDialogEvent(whichTrigger, whichDialog) end

---@param whichTrigger trigger
---@param whichButton button
---@return event
function TriggerRegisterDialogButtonEvent(whichTrigger, whichButton) end

---@return gamestate
function GetEventGameState() end

---@param whichTrigger trigger
---@param whichGameEvent gameevent
---@return event
function TriggerRegisterGameEvent(whichTrigger, whichGameEvent) end

---@return player
function GetWinningPlayer() end

---@param whichTrigger trigger
---@param whichRegion region
---@param filter boolexpr
---@return event
function TriggerRegisterEnterRegion(whichTrigger, whichRegion, filter) end

---@return region
function GetTriggeringRegion() end

---@return unit
function GetEnteringUnit() end

---@param whichTrigger trigger
---@param whichRegion region
---@param filter boolexpr
---@return event
function TriggerRegisterLeaveRegion(whichTrigger, whichRegion, filter) end

---@return unit
function GetLeavingUnit() end

---@param whichTrigger trigger
---@param t trackable
---@return event
function TriggerRegisterTrackableHitEvent(whichTrigger, t) end

---@param whichTrigger trigger
---@param t trackable
---@return event
function TriggerRegisterTrackableTrackEvent(whichTrigger, t) end

---@param whichTrigger trigger
---@param whichAbility integer
---@param order string
---@return event
function TriggerRegisterCommandEvent(whichTrigger, whichAbility, order) end

---@param whichTrigger trigger
---@param whichUpgrade integer
---@return event
function TriggerRegisterUpgradeCommandEvent(whichTrigger, whichUpgrade) end

---@return trackable
function GetTriggeringTrackable() end

---@return button
function GetClickedButton() end

---@return dialog
function GetClickedDialog() end

---@return number
function GetTournamentFinishSoonTimeRemaining() end

---@return integer
function GetTournamentFinishNowRule() end

---@return player
function GetTournamentFinishNowPlayer() end

---@param whichPlayer player
---@return integer
function GetTournamentScore(whichPlayer) end

---@return string
function GetSaveBasicFilename() end

---@param whichTrigger trigger
---@param whichPlayer player
---@param whichPlayerEvent playerevent
---@return event
function TriggerRegisterPlayerEvent(whichTrigger, whichPlayer, whichPlayerEvent) end

---@return player
function GetTriggerPlayer() end

---@param whichTrigger trigger
---@param whichPlayer player
---@param whichPlayerUnitEvent playerunitevent
---@param filter boolexpr
---@return event
function TriggerRegisterPlayerUnitEvent(whichTrigger, whichPlayer, whichPlayerUnitEvent, filter) end

---@return unit
function GetLevelingUnit() end

---@return unit
function GetLearningUnit() end

---@return integer
function GetLearnedSkill() end

---@return integer
function GetLearnedSkillLevel() end

---@return unit
function GetRevivableUnit() end

---@return unit
function GetRevivingUnit() end

---@return unit
function GetAttacker() end

---@return unit
function GetRescuer() end

---@return unit
function GetDyingUnit() end

---@return unit
function GetKillingUnit() end

---@return unit
function GetDecayingUnit() end

---@return unit
function GetSelectedUnit() end

---@return unit
function GetConstructingStructure() end

---@return unit
function GetCancelledStructure() end

---@return unit
function GetConstructedStructure() end

---@return unit
function GetResearchingUnit() end

---@return integer
function GetResearched() end

---@return integer
function GetTrainedUnitType() end

---@return unit
function GetTrainedUnit() end

---@return unit
function GetDetectedUnit() end

---@return unit
function GetSummoningUnit() end

---@return unit
function GetSummonedUnit() end

---@return unit
function GetTransportUnit() end

---@return unit
function GetLoadedUnit() end

---@return unit
function GetSellingUnit() end

---@return unit
function GetSoldUnit() end

---@return unit
function GetBuyingUnit() end

---@return item
function GetSoldItem() end

---@return unit
function GetChangingUnit() end

---@return player
function GetChangingUnitPrevOwner() end

---@return unit
function GetManipulatingUnit() end

---@return item
function GetManipulatedItem() end

---@return item
function BlzGetAbsorbingItem() end

---@return boolean
function BlzGetManipulatedItemWasAbsorbed() end

---@return item
function BlzGetStackingItemSource() end

---@return item
function BlzGetStackingItemTarget() end

---@return integer
function BlzGetStackingItemTargetPreviousCharges() end

---@return unit
function GetOrderedUnit() end

---@return integer
function GetIssuedOrderId() end

---@return number
function GetOrderPointX() end

---@return number
function GetOrderPointY() end

---@return location
function GetOrderPointLoc() end

---@return widget
function GetOrderTarget() end

---@return destructable
function GetOrderTargetDestructable() end

---@return item
function GetOrderTargetItem() end

---@return unit
function GetOrderTargetUnit() end

---@return unit
function GetSpellAbilityUnit() end

---@return integer
function GetSpellAbilityId() end

---@return ability
function GetSpellAbility() end

---@return location
function GetSpellTargetLoc() end

---@return number
function GetSpellTargetX() end

---@return number
function GetSpellTargetY() end

---@return destructable
function GetSpellTargetDestructable() end

---@return item
function GetSpellTargetItem() end

---@return unit
function GetSpellTargetUnit() end

---@param whichTrigger trigger
---@param whichPlayer player
---@param whichAlliance alliancetype
---@return event
function TriggerRegisterPlayerAllianceChange(whichTrigger, whichPlayer, whichAlliance) end

---@param whichTrigger trigger
---@param whichPlayer player
---@param whichState playerstate
---@param opcode limitop
---@param limitval number
---@return event
function TriggerRegisterPlayerStateEvent(whichTrigger, whichPlayer, whichState, opcode, limitval) end

---@return playerstate
function GetEventPlayerState() end

---@param whichTrigger trigger
---@param whichPlayer player
---@param chatMessageToDetect string
---@param exactMatchOnly boolean
---@return event
function TriggerRegisterPlayerChatEvent(whichTrigger, whichPlayer, chatMessageToDetect, exactMatchOnly) end

---@return string
function GetEventPlayerChatString() end

---@return string
function GetEventPlayerChatStringMatched() end

---@param whichTrigger trigger
---@param whichWidget widget
---@return event
function TriggerRegisterDeathEvent(whichTrigger, whichWidget) end

---@return unit
function GetTriggerUnit() end

---@param whichTrigger trigger
---@param whichUnit unit
---@param whichState unitstate
---@param opcode limitop
---@param limitval number
---@return event
function TriggerRegisterUnitStateEvent(whichTrigger, whichUnit, whichState, opcode, limitval) end

---@return unitstate
function GetEventUnitState() end

---@param whichTrigger trigger
---@param whichUnit unit
---@param whichEvent unitevent
---@return event
function TriggerRegisterUnitEvent(whichTrigger, whichUnit, whichEvent) end

---@return number
function GetEventDamage() end

---@return unit
function GetEventDamageSource() end

---@return player
function GetEventDetectingPlayer() end

---@param whichTrigger trigger
---@param whichUnit unit
---@param whichEvent unitevent
---@param filter boolexpr
---@return event
function TriggerRegisterFilterUnitEvent(whichTrigger, whichUnit, whichEvent, filter) end

---@return unit
function GetEventTargetUnit() end

---@param whichTrigger trigger
---@param whichUnit unit
---@param range number
---@param filter boolexpr
---@return event
function TriggerRegisterUnitInRange(whichTrigger, whichUnit, range, filter) end

---@param whichTrigger trigger
---@param condition boolexpr
---@return triggercondition
function TriggerAddCondition(whichTrigger, condition) end

---@param whichTrigger trigger
---@param whichCondition triggercondition
function TriggerRemoveCondition(whichTrigger, whichCondition) end

---@param whichTrigger trigger
function TriggerClearConditions(whichTrigger) end

---@param whichTrigger trigger
---@param actionFunc fun()
---@return triggeraction
function TriggerAddAction(whichTrigger, actionFunc) end

---@param whichTrigger trigger
---@param whichAction triggeraction
function TriggerRemoveAction(whichTrigger, whichAction) end

---@param whichTrigger trigger
function TriggerClearActions(whichTrigger) end

---@param timeout number
function TriggerSleepAction(timeout) end

---@param s sound
---@param offset number
function TriggerWaitForSound(s, offset) end

---@param whichTrigger trigger
---@return boolean
function TriggerEvaluate(whichTrigger) end

---@param whichTrigger trigger
function TriggerExecute(whichTrigger) end

---@param whichTrigger trigger
function TriggerExecuteWait(whichTrigger) end

function TriggerSyncStart() end

function TriggerSyncReady() end

---@param whichWidget widget
---@return number
function GetWidgetLife(whichWidget) end

---@param whichWidget widget
---@param newLife number
function SetWidgetLife(whichWidget, newLife) end

---@param whichWidget widget
---@return number
function GetWidgetX(whichWidget) end

---@param whichWidget widget
---@return number
function GetWidgetY(whichWidget) end

---@return widget
function GetTriggerWidget() end

---@param objectid integer
---@param x number
---@param y number
---@param face number
---@param scale number
---@param variation integer
---@return destructable
function CreateDestructable(objectid, x, y, face, scale, variation) end

---@param objectid integer
---@param x number
---@param y number
---@param z number
---@param face number
---@param scale number
---@param variation integer
---@return destructable
function CreateDestructableZ(objectid, x, y, z, face, scale, variation) end

---@param objectid integer
---@param x number
---@param y number
---@param face number
---@param scale number
---@param variation integer
---@return destructable
function CreateDeadDestructable(objectid, x, y, face, scale, variation) end

---@param objectid integer
---@param x number
---@param y number
---@param z number
---@param face number
---@param scale number
---@param variation integer
---@return destructable
function CreateDeadDestructableZ(objectid, x, y, z, face, scale, variation) end

---@param d destructable
function RemoveDestructable(d) end

---@param d destructable
function KillDestructable(d) end

---@param d destructable
---@param flag boolean
function SetDestructableInvulnerable(d, flag) end

---@param d destructable
---@return boolean
function IsDestructableInvulnerable(d) end

---@param r rect
---@param filter boolexpr
---@param actionFunc fun()
function EnumDestructablesInRect(r, filter, actionFunc) end

---@param d destructable
---@return integer
function GetDestructableTypeId(d) end

---@param d destructable
---@return number
function GetDestructableX(d) end

---@param d destructable
---@return number
function GetDestructableY(d) end

---@param d destructable
---@param life number
function SetDestructableLife(d, life) end

---@param d destructable
---@return number
function GetDestructableLife(d) end

---@param d destructable
---@param max number
function SetDestructableMaxLife(d, max) end

---@param d destructable
---@return number
function GetDestructableMaxLife(d) end

---@param d destructable
---@param life number
---@param birth boolean
function DestructableRestoreLife(d, life, birth) end

---@param d destructable
---@param whichAnimation string
function QueueDestructableAnimation(d, whichAnimation) end

---@param d destructable
---@param whichAnimation string
function SetDestructableAnimation(d, whichAnimation) end

---@param d destructable
---@param speedFactor number
function SetDestructableAnimationSpeed(d, speedFactor) end

---@param d destructable
---@param flag boolean
function ShowDestructable(d, flag) end

---@param d destructable
---@return number
function GetDestructableOccluderHeight(d) end

---@param d destructable
---@param height number
function SetDestructableOccluderHeight(d, height) end

---@param d destructable
---@return string
function GetDestructableName(d) end

---@return destructable
function GetTriggerDestructable() end

---@param itemid integer
---@param x number
---@param y number
---@return item
function CreateItem(itemid, x, y) end

---@param whichItem item
function RemoveItem(whichItem) end

---@param whichItem item
---@return player
function GetItemPlayer(whichItem) end

---@param i item
---@return integer
function GetItemTypeId(i) end

---@param i item
---@return number
function GetItemX(i) end

---@param i item
---@return number
function GetItemY(i) end

---@param i item
---@param x number
---@param y number
function SetItemPosition(i, x, y) end

---@param whichItem item
---@param flag boolean
function SetItemDropOnDeath(whichItem, flag) end

---@param i item
---@param flag boolean
function SetItemDroppable(i, flag) end

---@param i item
---@param flag boolean
function SetItemPawnable(i, flag) end

---@param whichItem item
---@param whichPlayer player
---@param changeColor boolean
function SetItemPlayer(whichItem, whichPlayer, changeColor) end

---@param whichItem item
---@param flag boolean
function SetItemInvulnerable(whichItem, flag) end

---@param whichItem item
---@return boolean
function IsItemInvulnerable(whichItem) end

---@param whichItem item
---@param show boolean
function SetItemVisible(whichItem, show) end

---@param whichItem item
---@return boolean
function IsItemVisible(whichItem) end

---@param whichItem item
---@return boolean
function IsItemOwned(whichItem) end

---@param whichItem item
---@return boolean
function IsItemPowerup(whichItem) end

---@param whichItem item
---@return boolean
function IsItemSellable(whichItem) end

---@param whichItem item
---@return boolean
function IsItemPawnable(whichItem) end

---@param itemId integer
---@return boolean
function IsItemIdPowerup(itemId) end

---@param itemId integer
---@return boolean
function IsItemIdSellable(itemId) end

---@param itemId integer
---@return boolean
function IsItemIdPawnable(itemId) end

---@param r rect
---@param filter boolexpr
---@param actionFunc fun()
function EnumItemsInRect(r, filter, actionFunc) end

---@param whichItem item
---@return integer
function GetItemLevel(whichItem) end

---@param whichItem item
---@return itemtype
function GetItemType(whichItem) end

---@param whichItem item
---@param unitId integer
function SetItemDropID(whichItem, unitId) end

---@param whichItem item
---@return string
function GetItemName(whichItem) end

---@param whichItem item
---@return integer
function GetItemCharges(whichItem) end

---@param whichItem item
---@param charges integer
function SetItemCharges(whichItem, charges) end

---@param whichItem item
---@return integer
function GetItemUserData(whichItem) end

---@param whichItem item
---@param data integer
function SetItemUserData(whichItem, data) end

---@param id player
---@param unitid integer
---@param x number
---@param y number
---@param face number
---@return unit
function CreateUnit(id, unitid, x, y, face) end

---@param whichPlayer player
---@param unitname string
---@param x number
---@param y number
---@param face number
---@return unit
function CreateUnitByName(whichPlayer, unitname, x, y, face) end

---@param id player
---@param unitid integer
---@param whichLocation location
---@param face number
---@return unit
function CreateUnitAtLoc(id, unitid, whichLocation, face) end

---@param id player
---@param unitname string
---@param whichLocation location
---@param face number
---@return unit
function CreateUnitAtLocByName(id, unitname, whichLocation, face) end

---@param whichPlayer player
---@param unitid integer
---@param x number
---@param y number
---@param face number
---@return unit
function CreateCorpse(whichPlayer, unitid, x, y, face) end

---@param whichUnit unit
function KillUnit(whichUnit) end

---@param whichUnit unit
function RemoveUnit(whichUnit) end

---@param whichUnit unit
---@param show boolean
function ShowUnit(whichUnit, show) end

---@param whichUnit unit
---@param whichUnitState unitstate
---@param newVal number
function SetUnitState(whichUnit, whichUnitState, newVal) end

---@param whichUnit unit
---@param newX number
function SetUnitX(whichUnit, newX) end

---@param whichUnit unit
---@param newY number
function SetUnitY(whichUnit, newY) end

---@param whichUnit unit
---@param newX number
---@param newY number
function SetUnitPosition(whichUnit, newX, newY) end

---@param whichUnit unit
---@param whichLocation location
function SetUnitPositionLoc(whichUnit, whichLocation) end

---@param whichUnit unit
---@param facingAngle number
function SetUnitFacing(whichUnit, facingAngle) end

---@param whichUnit unit
---@param facingAngle number
---@param duration number
function SetUnitFacingTimed(whichUnit, facingAngle, duration) end

---@param whichUnit unit
---@param newSpeed number
function SetUnitMoveSpeed(whichUnit, newSpeed) end

---@param whichUnit unit
---@param newHeight number
---@param rate number
function SetUnitFlyHeight(whichUnit, newHeight, rate) end

---@param whichUnit unit
---@param newTurnSpeed number
function SetUnitTurnSpeed(whichUnit, newTurnSpeed) end

---@param whichUnit unit
---@param newPropWindowAngle number
function SetUnitPropWindow(whichUnit, newPropWindowAngle) end

---@param whichUnit unit
---@param newAcquireRange number
function SetUnitAcquireRange(whichUnit, newAcquireRange) end

---@param whichUnit unit
---@param creepGuard boolean
function SetUnitCreepGuard(whichUnit, creepGuard) end

---@param whichUnit unit
---@return number
function GetUnitAcquireRange(whichUnit) end

---@param whichUnit unit
---@return number
function GetUnitTurnSpeed(whichUnit) end

---@param whichUnit unit
---@return number
function GetUnitPropWindow(whichUnit) end

---@param whichUnit unit
---@return number
function GetUnitFlyHeight(whichUnit) end

---@param whichUnit unit
---@return number
function GetUnitDefaultAcquireRange(whichUnit) end

---@param whichUnit unit
---@return number
function GetUnitDefaultTurnSpeed(whichUnit) end

---@param whichUnit unit
---@return number
function GetUnitDefaultPropWindow(whichUnit) end

---@param whichUnit unit
---@return number
function GetUnitDefaultFlyHeight(whichUnit) end

---@param whichUnit unit
---@param whichPlayer player
---@param changeColor boolean
function SetUnitOwner(whichUnit, whichPlayer, changeColor) end

---@param whichUnit unit
---@param whichColor playercolor
function SetUnitColor(whichUnit, whichColor) end

---@param whichUnit unit
---@param scaleX number
---@param scaleY number
---@param scaleZ number
function SetUnitScale(whichUnit, scaleX, scaleY, scaleZ) end

---@param whichUnit unit
---@param timeScale number
function SetUnitTimeScale(whichUnit, timeScale) end

---@param whichUnit unit
---@param blendTime number
function SetUnitBlendTime(whichUnit, blendTime) end

---@param whichUnit unit
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function SetUnitVertexColor(whichUnit, red, green, blue, alpha) end

---@param whichUnit unit
---@param whichAnimation string
function QueueUnitAnimation(whichUnit, whichAnimation) end

---@param whichUnit unit
---@param whichAnimation string
function SetUnitAnimation(whichUnit, whichAnimation) end

---@param whichUnit unit
---@param whichAnimation integer
function SetUnitAnimationByIndex(whichUnit, whichAnimation) end

---@param whichUnit unit
---@param whichAnimation string
---@param rarity raritycontrol
function SetUnitAnimationWithRarity(whichUnit, whichAnimation, rarity) end

---@param whichUnit unit
---@param animProperties string
---@param add boolean
function AddUnitAnimationProperties(whichUnit, animProperties, add) end

---@param whichUnit unit
---@param whichBone string
---@param lookAtTarget unit
---@param offsetX number
---@param offsetY number
---@param offsetZ number
function SetUnitLookAt(whichUnit, whichBone, lookAtTarget, offsetX, offsetY, offsetZ) end

---@param whichUnit unit
function ResetUnitLookAt(whichUnit) end

---@param whichUnit unit
---@param byWhichPlayer player
---@param flag boolean
function SetUnitRescuable(whichUnit, byWhichPlayer, flag) end

---@param whichUnit unit
---@param range number
function SetUnitRescueRange(whichUnit, range) end

---@param whichHero unit
---@param newStr integer
---@param permanent boolean
function SetHeroStr(whichHero, newStr, permanent) end

---@param whichHero unit
---@param newAgi integer
---@param permanent boolean
function SetHeroAgi(whichHero, newAgi, permanent) end

---@param whichHero unit
---@param newInt integer
---@param permanent boolean
function SetHeroInt(whichHero, newInt, permanent) end

---@param whichHero unit
---@param includeBonuses boolean
---@return integer
function GetHeroStr(whichHero, includeBonuses) end

---@param whichHero unit
---@param includeBonuses boolean
---@return integer
function GetHeroAgi(whichHero, includeBonuses) end

---@param whichHero unit
---@param includeBonuses boolean
---@return integer
function GetHeroInt(whichHero, includeBonuses) end

---@param whichHero unit
---@param howManyLevels integer
---@return boolean
function UnitStripHeroLevel(whichHero, howManyLevels) end

---@param whichHero unit
---@return integer
function GetHeroXP(whichHero) end

---@param whichHero unit
---@param newXpVal integer
---@param showEyeCandy boolean
function SetHeroXP(whichHero, newXpVal, showEyeCandy) end

---@param whichHero unit
---@return integer
function GetHeroSkillPoints(whichHero) end

---@param whichHero unit
---@param skillPointDelta integer
---@return boolean
function UnitModifySkillPoints(whichHero, skillPointDelta) end

---@param whichHero unit
---@param xpToAdd integer
---@param showEyeCandy boolean
function AddHeroXP(whichHero, xpToAdd, showEyeCandy) end

---@param whichHero unit
---@param level integer
---@param showEyeCandy boolean
function SetHeroLevel(whichHero, level, showEyeCandy) end

---@param whichHero unit
---@return integer
function GetHeroLevel(whichHero) end

---@param whichUnit unit
---@return integer
function GetUnitLevel(whichUnit) end

---@param whichHero unit
---@return string
function GetHeroProperName(whichHero) end

---@param whichHero unit
---@param flag boolean
function SuspendHeroXP(whichHero, flag) end

---@param whichHero unit
---@return boolean
function IsSuspendedXP(whichHero) end

---@param whichHero unit
---@param abilcode integer
function SelectHeroSkill(whichHero, abilcode) end

---@param whichUnit unit
---@param abilcode integer
---@return integer
function GetUnitAbilityLevel(whichUnit, abilcode) end

---@param whichUnit unit
---@param abilcode integer
---@return integer
function DecUnitAbilityLevel(whichUnit, abilcode) end

---@param whichUnit unit
---@param abilcode integer
---@return integer
function IncUnitAbilityLevel(whichUnit, abilcode) end

---@param whichUnit unit
---@param abilcode integer
---@param level integer
---@return integer
function SetUnitAbilityLevel(whichUnit, abilcode, level) end

---@param whichHero unit
---@param x number
---@param y number
---@param doEyecandy boolean
---@return boolean
function ReviveHero(whichHero, x, y, doEyecandy) end

---@param whichHero unit
---@param loc location
---@param doEyecandy boolean
---@return boolean
function ReviveHeroLoc(whichHero, loc, doEyecandy) end

---@param whichUnit unit
---@param exploded boolean
function SetUnitExploded(whichUnit, exploded) end

---@param whichUnit unit
---@param flag boolean
function SetUnitInvulnerable(whichUnit, flag) end

---@param whichUnit unit
---@param flag boolean
function PauseUnit(whichUnit, flag) end

---@param whichHero unit
---@return boolean
function IsUnitPaused(whichHero) end

---@param whichUnit unit
---@param flag boolean
function SetUnitPathing(whichUnit, flag) end

function ClearSelection() end

---@param whichUnit unit
---@param flag boolean
function SelectUnit(whichUnit, flag) end

---@param whichUnit unit
---@return integer
function GetUnitPointValue(whichUnit) end

---@param unitType integer
---@return integer
function GetUnitPointValueByType(unitType) end

---@param unitType integer
---@param newPointValue integer
function SetUnitPointValueByType(unitType, newPointValue) end

---@param whichUnit unit
---@param whichItem item
---@return boolean
function UnitAddItem(whichUnit, whichItem) end

---@param whichUnit unit
---@param itemId integer
---@return item
function UnitAddItemById(whichUnit, itemId) end

---@param whichUnit unit
---@param itemId integer
---@param itemSlot integer
---@return boolean
function UnitAddItemToSlotById(whichUnit, itemId, itemSlot) end

---@param whichUnit unit
---@param whichItem item
function UnitRemoveItem(whichUnit, whichItem) end

---@param whichUnit unit
---@param itemSlot integer
---@return item
function UnitRemoveItemFromSlot(whichUnit, itemSlot) end

---@param whichUnit unit
---@param whichItem item
---@return boolean
function UnitHasItem(whichUnit, whichItem) end

---@param whichUnit unit
---@param itemSlot integer
---@return item
function UnitItemInSlot(whichUnit, itemSlot) end

---@param whichUnit unit
---@return integer
function UnitInventorySize(whichUnit) end

---@param whichUnit unit
---@param whichItem item
---@param x number
---@param y number
---@return boolean
function UnitDropItemPoint(whichUnit, whichItem, x, y) end

---@param whichUnit unit
---@param whichItem item
---@param slot integer
---@return boolean
function UnitDropItemSlot(whichUnit, whichItem, slot) end

---@param whichUnit unit
---@param whichItem item
---@param target widget
---@return boolean
function UnitDropItemTarget(whichUnit, whichItem, target) end

---@param whichUnit unit
---@param whichItem item
---@return boolean
function UnitUseItem(whichUnit, whichItem) end

---@param whichUnit unit
---@param whichItem item
---@param x number
---@param y number
---@return boolean
function UnitUseItemPoint(whichUnit, whichItem, x, y) end

---@param whichUnit unit
---@param whichItem item
---@param target widget
---@return boolean
function UnitUseItemTarget(whichUnit, whichItem, target) end

---@param whichUnit unit
---@return number
function GetUnitX(whichUnit) end

---@param whichUnit unit
---@return number
function GetUnitY(whichUnit) end

---@param whichUnit unit
---@return location
function GetUnitLoc(whichUnit) end

---@param whichUnit unit
---@return number
function GetUnitFacing(whichUnit) end

---@param whichUnit unit
---@return number
function GetUnitMoveSpeed(whichUnit) end

---@param whichUnit unit
---@return number
function GetUnitDefaultMoveSpeed(whichUnit) end

---@param whichUnit unit
---@param whichUnitState unitstate
---@return number
function GetUnitState(whichUnit, whichUnitState) end

---@param whichUnit unit
---@return player
function GetOwningPlayer(whichUnit) end

---@param whichUnit unit
---@return integer
function GetUnitTypeId(whichUnit) end

---@param whichUnit unit
---@return race
function GetUnitRace(whichUnit) end

---@param whichUnit unit
---@return string
function GetUnitName(whichUnit) end

---@param whichUnit unit
---@return integer
function GetUnitFoodUsed(whichUnit) end

---@param whichUnit unit
---@return integer
function GetUnitFoodMade(whichUnit) end

---@param unitId integer
---@return integer
function GetFoodMade(unitId) end

---@param unitId integer
---@return integer
function GetFoodUsed(unitId) end

---@param whichUnit unit
---@param useFood boolean
function SetUnitUseFood(whichUnit, useFood) end

---@param whichUnit unit
---@return location
function GetUnitRallyPoint(whichUnit) end

---@param whichUnit unit
---@return unit
function GetUnitRallyUnit(whichUnit) end

---@param whichUnit unit
---@return destructable
function GetUnitRallyDestructable(whichUnit) end

---@param whichUnit unit
---@param whichGroup group
---@return boolean
function IsUnitInGroup(whichUnit, whichGroup) end

---@param whichUnit unit
---@param whichForce force
---@return boolean
function IsUnitInForce(whichUnit, whichForce) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitOwnedByPlayer(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitAlly(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitEnemy(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitVisible(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitDetected(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitInvisible(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitFogged(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitMasked(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitSelected(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichRace race
---@return boolean
function IsUnitRace(whichUnit, whichRace) end

---@param whichUnit unit
---@param whichUnitType unittype
---@return boolean
function IsUnitType(whichUnit, whichUnitType) end

---@param whichUnit unit
---@param whichSpecifiedUnit unit
---@return boolean
function IsUnit(whichUnit, whichSpecifiedUnit) end

---@param whichUnit unit
---@param otherUnit unit
---@param distance number
---@return boolean
function IsUnitInRange(whichUnit, otherUnit, distance) end

---@param whichUnit unit
---@param x number
---@param y number
---@param distance number
---@return boolean
function IsUnitInRangeXY(whichUnit, x, y, distance) end

---@param whichUnit unit
---@param whichLocation location
---@param distance number
---@return boolean
function IsUnitInRangeLoc(whichUnit, whichLocation, distance) end

---@param whichUnit unit
---@return boolean
function IsUnitHidden(whichUnit) end

---@param whichUnit unit
---@return boolean
function IsUnitIllusion(whichUnit) end

---@param whichUnit unit
---@param whichTransport unit
---@return boolean
function IsUnitInTransport(whichUnit, whichTransport) end

---@param whichUnit unit
---@return boolean
function IsUnitLoaded(whichUnit) end

---@param unitId integer
---@return boolean
function IsHeroUnitId(unitId) end

---@param unitId integer
---@param whichUnitType unittype
---@return boolean
function IsUnitIdType(unitId, whichUnitType) end

---@param whichUnit unit
---@param whichPlayer player
---@param share boolean
function UnitShareVision(whichUnit, whichPlayer, share) end

---@param whichUnit unit
---@param suspend boolean
function UnitSuspendDecay(whichUnit, suspend) end

---@param whichUnit unit
---@param whichUnitType unittype
---@return boolean
function UnitAddType(whichUnit, whichUnitType) end

---@param whichUnit unit
---@param whichUnitType unittype
---@return boolean
function UnitRemoveType(whichUnit, whichUnitType) end

---@param whichUnit unit
---@param abilityId integer
---@return boolean
function UnitAddAbility(whichUnit, abilityId) end

---@param whichUnit unit
---@param abilityId integer
---@return boolean
function UnitRemoveAbility(whichUnit, abilityId) end

---@param whichUnit unit
---@param permanent boolean
---@param abilityId integer
---@return boolean
function UnitMakeAbilityPermanent(whichUnit, permanent, abilityId) end

---@param whichUnit unit
---@param removePositive boolean
---@param removeNegative boolean
function UnitRemoveBuffs(whichUnit, removePositive, removeNegative) end

---@param whichUnit unit
---@param removePositive boolean
---@param removeNegative boolean
---@param magic boolean
---@param physical boolean
---@param timedLife boolean
---@param aura boolean
---@param autoDispel boolean
function UnitRemoveBuffsEx(whichUnit, removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel) end

---@param whichUnit unit
---@param removePositive boolean
---@param removeNegative boolean
---@param magic boolean
---@param physical boolean
---@param timedLife boolean
---@param aura boolean
---@param autoDispel boolean
---@return boolean
function UnitHasBuffsEx(whichUnit, removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel) end

---@param whichUnit unit
---@param removePositive boolean
---@param removeNegative boolean
---@param magic boolean
---@param physical boolean
---@param timedLife boolean
---@param aura boolean
---@param autoDispel boolean
---@return integer
function UnitCountBuffsEx(whichUnit, removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel) end

---@param whichUnit unit
---@param add boolean
function UnitAddSleep(whichUnit, add) end

---@param whichUnit unit
---@return boolean
function UnitCanSleep(whichUnit) end

---@param whichUnit unit
---@param add boolean
function UnitAddSleepPerm(whichUnit, add) end

---@param whichUnit unit
---@return boolean
function UnitCanSleepPerm(whichUnit) end

---@param whichUnit unit
---@return boolean
function UnitIsSleeping(whichUnit) end

---@param whichUnit unit
function UnitWakeUp(whichUnit) end

---@param whichUnit unit
---@param buffId integer
---@param duration number
function UnitApplyTimedLife(whichUnit, buffId, duration) end

---@param whichUnit unit
---@param flag boolean
---@return boolean
function UnitIgnoreAlarm(whichUnit, flag) end

---@param whichUnit unit
---@return boolean
function UnitIgnoreAlarmToggled(whichUnit) end

---@param whichUnit unit
function UnitResetCooldown(whichUnit) end

---@param whichUnit unit
---@param constructionPercentage integer
function UnitSetConstructionProgress(whichUnit, constructionPercentage) end

---@param whichUnit unit
---@param upgradePercentage integer
function UnitSetUpgradeProgress(whichUnit, upgradePercentage) end

---@param whichUnit unit
---@param flag boolean
function UnitPauseTimedLife(whichUnit, flag) end

---@param whichUnit unit
---@param flag boolean
function UnitSetUsesAltIcon(whichUnit, flag) end

---@param whichUnit unit
---@param delay number
---@param radius number
---@param x number
---@param y number
---@param amount number
---@param attack boolean
---@param ranged boolean
---@param attackType attacktype
---@param damageType damagetype
---@param weaponType weapontype
---@return boolean
function UnitDamagePoint(whichUnit, delay, radius, x, y, amount, attack, ranged, attackType, damageType, weaponType) end

---@param whichUnit unit
---@param target widget
---@param amount number
---@param attack boolean
---@param ranged boolean
---@param attackType attacktype
---@param damageType damagetype
---@param weaponType weapontype
---@return boolean
function UnitDamageTarget(whichUnit, target, amount, attack, ranged, attackType, damageType, weaponType) end

---@param whichUnit unit
---@param order string
---@return boolean
function IssueImmediateOrder(whichUnit, order) end

---@param whichUnit unit
---@param order integer
---@return boolean
function IssueImmediateOrderById(whichUnit, order) end

---@param whichUnit unit
---@param order string
---@param x number
---@param y number
---@return boolean
function IssuePointOrder(whichUnit, order, x, y) end

---@param whichUnit unit
---@param order string
---@param whichLocation location
---@return boolean
function IssuePointOrderLoc(whichUnit, order, whichLocation) end

---@param whichUnit unit
---@param order integer
---@param x number
---@param y number
---@return boolean
function IssuePointOrderById(whichUnit, order, x, y) end

---@param whichUnit unit
---@param order integer
---@param whichLocation location
---@return boolean
function IssuePointOrderByIdLoc(whichUnit, order, whichLocation) end

---@param whichUnit unit
---@param order string
---@param targetWidget widget
---@return boolean
function IssueTargetOrder(whichUnit, order, targetWidget) end

---@param whichUnit unit
---@param order integer
---@param targetWidget widget
---@return boolean
function IssueTargetOrderById(whichUnit, order, targetWidget) end

---@param whichUnit unit
---@param order string
---@param x number
---@param y number
---@param instantTargetWidget widget
---@return boolean
function IssueInstantPointOrder(whichUnit, order, x, y, instantTargetWidget) end

---@param whichUnit unit
---@param order integer
---@param x number
---@param y number
---@param instantTargetWidget widget
---@return boolean
function IssueInstantPointOrderById(whichUnit, order, x, y, instantTargetWidget) end

---@param whichUnit unit
---@param order string
---@param targetWidget widget
---@param instantTargetWidget widget
---@return boolean
function IssueInstantTargetOrder(whichUnit, order, targetWidget, instantTargetWidget) end

---@param whichUnit unit
---@param order integer
---@param targetWidget widget
---@param instantTargetWidget widget
---@return boolean
function IssueInstantTargetOrderById(whichUnit, order, targetWidget, instantTargetWidget) end

---@param whichPeon unit
---@param unitToBuild string
---@param x number
---@param y number
---@return boolean
function IssueBuildOrder(whichPeon, unitToBuild, x, y) end

---@param whichPeon unit
---@param unitId integer
---@param x number
---@param y number
---@return boolean
function IssueBuildOrderById(whichPeon, unitId, x, y) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitToBuild string
---@return boolean
function IssueNeutralImmediateOrder(forWhichPlayer, neutralStructure, unitToBuild) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitId integer
---@return boolean
function IssueNeutralImmediateOrderById(forWhichPlayer, neutralStructure, unitId) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitToBuild string
---@param x number
---@param y number
---@return boolean
function IssueNeutralPointOrder(forWhichPlayer, neutralStructure, unitToBuild, x, y) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitId integer
---@param x number
---@param y number
---@return boolean
function IssueNeutralPointOrderById(forWhichPlayer, neutralStructure, unitId, x, y) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitToBuild string
---@param target widget
---@return boolean
function IssueNeutralTargetOrder(forWhichPlayer, neutralStructure, unitToBuild, target) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitId integer
---@param target widget
---@return boolean
function IssueNeutralTargetOrderById(forWhichPlayer, neutralStructure, unitId, target) end

---@param whichUnit unit
---@return integer
function GetUnitCurrentOrder(whichUnit) end

---@param whichUnit unit
---@param amount integer
function SetResourceAmount(whichUnit, amount) end

---@param whichUnit unit
---@param amount integer
function AddResourceAmount(whichUnit, amount) end

---@param whichUnit unit
---@return integer
function GetResourceAmount(whichUnit) end

---@param waygate unit
---@return number
function WaygateGetDestinationX(waygate) end

---@param waygate unit
---@return number
function WaygateGetDestinationY(waygate) end

---@param waygate unit
---@param x number
---@param y number
function WaygateSetDestination(waygate, x, y) end

---@param waygate unit
---@param activate boolean
function WaygateActivate(waygate, activate) end

---@param waygate unit
---@return boolean
function WaygateIsActive(waygate) end

---@param itemId integer
---@param currentStock integer
---@param stockMax integer
function AddItemToAllStock(itemId, currentStock, stockMax) end

---@param whichUnit unit
---@param itemId integer
---@param currentStock integer
---@param stockMax integer
function AddItemToStock(whichUnit, itemId, currentStock, stockMax) end

---@param unitId integer
---@param currentStock integer
---@param stockMax integer
function AddUnitToAllStock(unitId, currentStock, stockMax) end

---@param whichUnit unit
---@param unitId integer
---@param currentStock integer
---@param stockMax integer
function AddUnitToStock(whichUnit, unitId, currentStock, stockMax) end

---@param itemId integer
function RemoveItemFromAllStock(itemId) end

---@param whichUnit unit
---@param itemId integer
function RemoveItemFromStock(whichUnit, itemId) end

---@param unitId integer
function RemoveUnitFromAllStock(unitId) end

---@param whichUnit unit
---@param unitId integer
function RemoveUnitFromStock(whichUnit, unitId) end

---@param slots integer
function SetAllItemTypeSlots(slots) end

---@param slots integer
function SetAllUnitTypeSlots(slots) end

---@param whichUnit unit
---@param slots integer
function SetItemTypeSlots(whichUnit, slots) end

---@param whichUnit unit
---@param slots integer
function SetUnitTypeSlots(whichUnit, slots) end

---@param whichUnit unit
---@return integer
function GetUnitUserData(whichUnit) end

---@param whichUnit unit
---@param data integer
function SetUnitUserData(whichUnit, data) end

---@param number integer
---@return player
function Player(number) end

---@return player
function GetLocalPlayer() end

---@param whichPlayer player
---@param otherPlayer player
---@return boolean
function IsPlayerAlly(whichPlayer, otherPlayer) end

---@param whichPlayer player
---@param otherPlayer player
---@return boolean
function IsPlayerEnemy(whichPlayer, otherPlayer) end

---@param whichPlayer player
---@param whichForce force
---@return boolean
function IsPlayerInForce(whichPlayer, whichForce) end

---@param whichPlayer player
---@return boolean
function IsPlayerObserver(whichPlayer) end

---@param x number
---@param y number
---@param whichPlayer player
---@return boolean
function IsVisibleToPlayer(x, y, whichPlayer) end

---@param whichLocation location
---@param whichPlayer player
---@return boolean
function IsLocationVisibleToPlayer(whichLocation, whichPlayer) end

---@param x number
---@param y number
---@param whichPlayer player
---@return boolean
function IsFoggedToPlayer(x, y, whichPlayer) end

---@param whichLocation location
---@param whichPlayer player
---@return boolean
function IsLocationFoggedToPlayer(whichLocation, whichPlayer) end

---@param x number
---@param y number
---@param whichPlayer player
---@return boolean
function IsMaskedToPlayer(x, y, whichPlayer) end

---@param whichLocation location
---@param whichPlayer player
---@return boolean
function IsLocationMaskedToPlayer(whichLocation, whichPlayer) end

---@param whichPlayer player
---@return race
function GetPlayerRace(whichPlayer) end

---@param whichPlayer player
---@return integer
function GetPlayerId(whichPlayer) end

---@param whichPlayer player
---@param includeIncomplete boolean
---@return integer
function GetPlayerUnitCount(whichPlayer, includeIncomplete) end

---@param whichPlayer player
---@param unitName string
---@param includeIncomplete boolean
---@param includeUpgrades boolean
---@return integer
function GetPlayerTypedUnitCount(whichPlayer, unitName, includeIncomplete, includeUpgrades) end

---@param whichPlayer player
---@param includeIncomplete boolean
---@return integer
function GetPlayerStructureCount(whichPlayer, includeIncomplete) end

---@param whichPlayer player
---@param whichPlayerState playerstate
---@return integer
function GetPlayerState(whichPlayer, whichPlayerState) end

---@param whichPlayer player
---@param whichPlayerScore playerscore
---@return integer
function GetPlayerScore(whichPlayer, whichPlayerScore) end

---@param sourcePlayer player
---@param otherPlayer player
---@param whichAllianceSetting alliancetype
---@return boolean
function GetPlayerAlliance(sourcePlayer, otherPlayer, whichAllianceSetting) end

---@param whichPlayer player
---@return number
function GetPlayerHandicap(whichPlayer) end

---@param whichPlayer player
---@return number
function GetPlayerHandicapXP(whichPlayer) end

---@param whichPlayer player
---@return number
function GetPlayerHandicapReviveTime(whichPlayer) end

---@param whichPlayer player
---@return number
function GetPlayerHandicapDamage(whichPlayer) end

---@param whichPlayer player
---@param handicap number
function SetPlayerHandicap(whichPlayer, handicap) end

---@param whichPlayer player
---@param handicap number
function SetPlayerHandicapXP(whichPlayer, handicap) end

---@param whichPlayer player
---@param handicap number
function SetPlayerHandicapReviveTime(whichPlayer, handicap) end

---@param whichPlayer player
---@param handicap number
function SetPlayerHandicapDamage(whichPlayer, handicap) end

---@param whichPlayer player
---@param techid integer
---@param maximum integer
function SetPlayerTechMaxAllowed(whichPlayer, techid, maximum) end

---@param whichPlayer player
---@param techid integer
---@return integer
function GetPlayerTechMaxAllowed(whichPlayer, techid) end

---@param whichPlayer player
---@param techid integer
---@param levels integer
function AddPlayerTechResearched(whichPlayer, techid, levels) end

---@param whichPlayer player
---@param techid integer
---@param setToLevel integer
function SetPlayerTechResearched(whichPlayer, techid, setToLevel) end

---@param whichPlayer player
---@param techid integer
---@param specificonly boolean
---@return boolean
function GetPlayerTechResearched(whichPlayer, techid, specificonly) end

---@param whichPlayer player
---@param techid integer
---@param specificonly boolean
---@return integer
function GetPlayerTechCount(whichPlayer, techid, specificonly) end

---@param whichPlayer player
---@param newOwner integer
function SetPlayerUnitsOwner(whichPlayer, newOwner) end

---@param whichPlayer player
---@param toWhichPlayers force
---@param flag boolean
function CripplePlayer(whichPlayer, toWhichPlayers, flag) end

---@param whichPlayer player
---@param abilid integer
---@param avail boolean
function SetPlayerAbilityAvailable(whichPlayer, abilid, avail) end

---@param whichPlayer player
---@param whichPlayerState playerstate
---@param value integer
function SetPlayerState(whichPlayer, whichPlayerState, value) end

---@param whichPlayer player
---@param gameResult playergameresult
function RemovePlayer(whichPlayer, gameResult) end

---@param whichPlayer player
function CachePlayerHeroData(whichPlayer) end

---@param forWhichPlayer player
---@param whichState fogstate
---@param where rect
---@param useSharedVision boolean
function SetFogStateRect(forWhichPlayer, whichState, where, useSharedVision) end

---@param forWhichPlayer player
---@param whichState fogstate
---@param centerx number
---@param centerY number
---@param radius number
---@param useSharedVision boolean
function SetFogStateRadius(forWhichPlayer, whichState, centerx, centerY, radius, useSharedVision) end

---@param forWhichPlayer player
---@param whichState fogstate
---@param center location
---@param radius number
---@param useSharedVision boolean
function SetFogStateRadiusLoc(forWhichPlayer, whichState, center, radius, useSharedVision) end

---@param enable boolean
function FogMaskEnable(enable) end

---@return boolean
function IsFogMaskEnabled() end

---@param enable boolean
function FogEnable(enable) end

---@return boolean
function IsFogEnabled() end

---@param forWhichPlayer player
---@param whichState fogstate
---@param where rect
---@param useSharedVision boolean
---@param afterUnits boolean
---@return fogmodifier
function CreateFogModifierRect(forWhichPlayer, whichState, where, useSharedVision, afterUnits) end

---@param forWhichPlayer player
---@param whichState fogstate
---@param centerx number
---@param centerY number
---@param radius number
---@param useSharedVision boolean
---@param afterUnits boolean
---@return fogmodifier
function CreateFogModifierRadius(forWhichPlayer, whichState, centerx, centerY, radius, useSharedVision, afterUnits) end

---@param forWhichPlayer player
---@param whichState fogstate
---@param center location
---@param radius number
---@param useSharedVision boolean
---@param afterUnits boolean
---@return fogmodifier
function CreateFogModifierRadiusLoc(forWhichPlayer, whichState, center, radius, useSharedVision, afterUnits) end

---@param whichFogModifier fogmodifier
function DestroyFogModifier(whichFogModifier) end

---@param whichFogModifier fogmodifier
function FogModifierStart(whichFogModifier) end

---@param whichFogModifier fogmodifier
function FogModifierStop(whichFogModifier) end

---@return version
function VersionGet() end

---@param whichVersion version
---@return boolean
function VersionCompatible(whichVersion) end

---@param whichVersion version
---@return boolean
function VersionSupported(whichVersion) end

---@param doScoreScreen boolean
function EndGame(doScoreScreen) end

---@param newLevel string
---@param doScoreScreen boolean
function ChangeLevel(newLevel, doScoreScreen) end

---@param doScoreScreen boolean
function RestartGame(doScoreScreen) end

function ReloadGame() end

---@param r race
function SetCampaignMenuRace(r) end

---@param campaignIndex integer
function SetCampaignMenuRaceEx(campaignIndex) end

function ForceCampaignSelectScreen() end

---@param saveFileName string
---@param doScoreScreen boolean
function LoadGame(saveFileName, doScoreScreen) end

---@param saveFileName string
function SaveGame(saveFileName) end

---@param sourceDirName string
---@param destDirName string
---@return boolean
function RenameSaveDirectory(sourceDirName, destDirName) end

---@param sourceDirName string
---@return boolean
function RemoveSaveDirectory(sourceDirName) end

---@param sourceSaveName string
---@param destSaveName string
---@return boolean
function CopySaveGame(sourceSaveName, destSaveName) end

---@param saveName string
---@return boolean
function SaveGameExists(saveName) end

---@param maxCheckpointSaves integer
function SetMaxCheckpointSaves(maxCheckpointSaves) end

---@param saveFileName string
---@param showWindow boolean
function SaveGameCheckpoint(saveFileName, showWindow) end

function SyncSelections() end

---@param whichFloatGameState fgamestate
---@param value number
function SetFloatGameState(whichFloatGameState, value) end

---@param whichFloatGameState fgamestate
---@return number
function GetFloatGameState(whichFloatGameState) end

---@param whichIntegerGameState igamestate
---@param value integer
function SetIntegerGameState(whichIntegerGameState, value) end

---@param whichIntegerGameState igamestate
---@return integer
function GetIntegerGameState(whichIntegerGameState) end

---@param cleared boolean
function SetTutorialCleared(cleared) end

---@param campaignNumber integer
---@param missionNumber integer
---@param available boolean
function SetMissionAvailable(campaignNumber, missionNumber, available) end

---@param campaignNumber integer
---@param available boolean
function SetCampaignAvailable(campaignNumber, available) end

---@param campaignNumber integer
---@param available boolean
function SetOpCinematicAvailable(campaignNumber, available) end

---@param campaignNumber integer
---@param available boolean
function SetEdCinematicAvailable(campaignNumber, available) end

---@return gamedifficulty
function GetDefaultDifficulty() end

---@param g gamedifficulty
function SetDefaultDifficulty(g) end

---@param whichButton integer
---@param visible boolean
function SetCustomCampaignButtonVisible(whichButton, visible) end

---@param whichButton integer
---@return boolean
function GetCustomCampaignButtonVisible(whichButton) end

function DoNotSaveReplay() end

---@return dialog
function DialogCreate() end

---@param whichDialog dialog
function DialogDestroy(whichDialog) end

---@param whichDialog dialog
function DialogClear(whichDialog) end

---@param whichDialog dialog
---@param messageText string
function DialogSetMessage(whichDialog, messageText) end

---@param whichDialog dialog
---@param buttonText string
---@param hotkey integer
---@return button
function DialogAddButton(whichDialog, buttonText, hotkey) end

---@param whichDialog dialog
---@param doScoreScreen boolean
---@param buttonText string
---@param hotkey integer
---@return button
function DialogAddQuitButton(whichDialog, doScoreScreen, buttonText, hotkey) end

---@param whichPlayer player
---@param whichDialog dialog
---@param flag boolean
function DialogDisplay(whichPlayer, whichDialog, flag) end

---@return boolean
function ReloadGameCachesFromDisk() end

---@param campaignFile string
---@return gamecache
function InitGameCache(campaignFile) end

---@param whichCache gamecache
---@return boolean
function SaveGameCache(whichCache) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param value integer
function StoreInteger(cache, missionKey, key, value) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param value number
function StoreReal(cache, missionKey, key, value) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param value boolean
function StoreBoolean(cache, missionKey, key, value) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param whichUnit unit
---@return boolean
function StoreUnit(cache, missionKey, key, whichUnit) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param value string
---@return boolean
function StoreString(cache, missionKey, key, value) end

---@param cache gamecache
---@param missionKey string
---@param key string
function SyncStoredInteger(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
function SyncStoredReal(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
function SyncStoredBoolean(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
function SyncStoredUnit(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
function SyncStoredString(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function HaveStoredInteger(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function HaveStoredReal(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function HaveStoredBoolean(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function HaveStoredUnit(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function HaveStoredString(cache, missionKey, key) end

---@param cache gamecache
function FlushGameCache(cache) end

---@param cache gamecache
---@param missionKey string
function FlushStoredMission(cache, missionKey) end

---@param cache gamecache
---@param missionKey string
---@param key string
function FlushStoredInteger(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
function FlushStoredReal(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
function FlushStoredBoolean(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
function FlushStoredUnit(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
function FlushStoredString(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return integer
function GetStoredInteger(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return number
function GetStoredReal(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function GetStoredBoolean(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return string
function GetStoredString(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param forWhichPlayer player
---@param x number
---@param y number
---@param facing number
---@return unit
function RestoreUnit(cache, missionKey, key, forWhichPlayer, x, y, facing) end

---@return hashtable
function InitHashtable() end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param value integer
function SaveInteger(table, parentKey, childKey, value) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param value number
function SaveReal(table, parentKey, childKey, value) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param value boolean
function SaveBoolean(table, parentKey, childKey, value) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param value string
---@return boolean
function SaveStr(table, parentKey, childKey, value) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichPlayer player
---@return boolean
function SavePlayerHandle(table, parentKey, childKey, whichPlayer) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichWidget widget
---@return boolean
function SaveWidgetHandle(table, parentKey, childKey, whichWidget) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichDestructable destructable
---@return boolean
function SaveDestructableHandle(table, parentKey, childKey, whichDestructable) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichItem item
---@return boolean
function SaveItemHandle(table, parentKey, childKey, whichItem) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichUnit unit
---@return boolean
function SaveUnitHandle(table, parentKey, childKey, whichUnit) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichAbility ability
---@return boolean
function SaveAbilityHandle(table, parentKey, childKey, whichAbility) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichTimer timer
---@return boolean
function SaveTimerHandle(table, parentKey, childKey, whichTimer) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichTrigger trigger
---@return boolean
function SaveTriggerHandle(table, parentKey, childKey, whichTrigger) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichTriggercondition triggercondition
---@return boolean
function SaveTriggerConditionHandle(table, parentKey, childKey, whichTriggercondition) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichTriggeraction triggeraction
---@return boolean
function SaveTriggerActionHandle(table, parentKey, childKey, whichTriggeraction) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichEvent event
---@return boolean
function SaveTriggerEventHandle(table, parentKey, childKey, whichEvent) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichForce force
---@return boolean
function SaveForceHandle(table, parentKey, childKey, whichForce) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichGroup group
---@return boolean
function SaveGroupHandle(table, parentKey, childKey, whichGroup) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichLocation location
---@return boolean
function SaveLocationHandle(table, parentKey, childKey, whichLocation) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichRect rect
---@return boolean
function SaveRectHandle(table, parentKey, childKey, whichRect) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichBoolexpr boolexpr
---@return boolean
function SaveBooleanExprHandle(table, parentKey, childKey, whichBoolexpr) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichSound sound
---@return boolean
function SaveSoundHandle(table, parentKey, childKey, whichSound) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichEffect effect
---@return boolean
function SaveEffectHandle(table, parentKey, childKey, whichEffect) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichUnitpool unitpool
---@return boolean
function SaveUnitPoolHandle(table, parentKey, childKey, whichUnitpool) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichItempool itempool
---@return boolean
function SaveItemPoolHandle(table, parentKey, childKey, whichItempool) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichQuest quest
---@return boolean
function SaveQuestHandle(table, parentKey, childKey, whichQuest) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichQuestitem questitem
---@return boolean
function SaveQuestItemHandle(table, parentKey, childKey, whichQuestitem) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichDefeatcondition defeatcondition
---@return boolean
function SaveDefeatConditionHandle(table, parentKey, childKey, whichDefeatcondition) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichTimerdialog timerdialog
---@return boolean
function SaveTimerDialogHandle(table, parentKey, childKey, whichTimerdialog) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichLeaderboard leaderboard
---@return boolean
function SaveLeaderboardHandle(table, parentKey, childKey, whichLeaderboard) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichMultiboard multiboard
---@return boolean
function SaveMultiboardHandle(table, parentKey, childKey, whichMultiboard) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichMultiboarditem multiboarditem
---@return boolean
function SaveMultiboardItemHandle(table, parentKey, childKey, whichMultiboarditem) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichTrackable trackable
---@return boolean
function SaveTrackableHandle(table, parentKey, childKey, whichTrackable) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichDialog dialog
---@return boolean
function SaveDialogHandle(table, parentKey, childKey, whichDialog) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichButton button
---@return boolean
function SaveButtonHandle(table, parentKey, childKey, whichButton) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichTexttag texttag
---@return boolean
function SaveTextTagHandle(table, parentKey, childKey, whichTexttag) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichLightning lightning
---@return boolean
function SaveLightningHandle(table, parentKey, childKey, whichLightning) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichImage image
---@return boolean
function SaveImageHandle(table, parentKey, childKey, whichImage) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichUbersplat ubersplat
---@return boolean
function SaveUbersplatHandle(table, parentKey, childKey, whichUbersplat) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichRegion region
---@return boolean
function SaveRegionHandle(table, parentKey, childKey, whichRegion) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichFogState fogstate
---@return boolean
function SaveFogStateHandle(table, parentKey, childKey, whichFogState) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichFogModifier fogmodifier
---@return boolean
function SaveFogModifierHandle(table, parentKey, childKey, whichFogModifier) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichAgent agent
---@return boolean
function SaveAgentHandle(table, parentKey, childKey, whichAgent) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichHashtable hashtable
---@return boolean
function SaveHashtableHandle(table, parentKey, childKey, whichHashtable) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichFrameHandle framehandle
---@return boolean
function SaveFrameHandle(table, parentKey, childKey, whichFrameHandle) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return integer
function LoadInteger(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return number
function LoadReal(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function LoadBoolean(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return string
function LoadStr(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return player
function LoadPlayerHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return widget
function LoadWidgetHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return destructable
function LoadDestructableHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return item
function LoadItemHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return unit
function LoadUnitHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return ability
function LoadAbilityHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return timer
function LoadTimerHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return trigger
function LoadTriggerHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return triggercondition
function LoadTriggerConditionHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return triggeraction
function LoadTriggerActionHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return event
function LoadTriggerEventHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return force
function LoadForceHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return group
function LoadGroupHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return location
function LoadLocationHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return rect
function LoadRectHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolexpr
function LoadBooleanExprHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return sound
function LoadSoundHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return effect
function LoadEffectHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return unitpool
function LoadUnitPoolHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return itempool
function LoadItemPoolHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return quest
function LoadQuestHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return questitem
function LoadQuestItemHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return defeatcondition
function LoadDefeatConditionHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return timerdialog
function LoadTimerDialogHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return leaderboard
function LoadLeaderboardHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return multiboard
function LoadMultiboardHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return multiboarditem
function LoadMultiboardItemHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return trackable
function LoadTrackableHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return dialog
function LoadDialogHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return button
function LoadButtonHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return texttag
function LoadTextTagHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return lightning
function LoadLightningHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return image
function LoadImageHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return ubersplat
function LoadUbersplatHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return region
function LoadRegionHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return fogstate
function LoadFogStateHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return fogmodifier
function LoadFogModifierHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return hashtable
function LoadHashtableHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return framehandle
function LoadFrameHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function HaveSavedInteger(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function HaveSavedReal(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function HaveSavedBoolean(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function HaveSavedString(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function HaveSavedHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
function RemoveSavedInteger(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
function RemoveSavedReal(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
function RemoveSavedBoolean(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
function RemoveSavedString(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
function RemoveSavedHandle(table, parentKey, childKey) end

---@param table hashtable
function FlushParentHashtable(table) end

---@param table hashtable
---@param parentKey integer
function FlushChildHashtable(table, parentKey) end

---@param lowBound integer
---@param highBound integer
---@return integer
function GetRandomInt(lowBound, highBound) end

---@param lowBound number
---@param highBound number
---@return number
function GetRandomReal(lowBound, highBound) end

---@return unitpool
function CreateUnitPool() end

---@param whichPool unitpool
function DestroyUnitPool(whichPool) end

---@param whichPool unitpool
---@param unitId integer
---@param weight number
function UnitPoolAddUnitType(whichPool, unitId, weight) end

---@param whichPool unitpool
---@param unitId integer
function UnitPoolRemoveUnitType(whichPool, unitId) end

---@param whichPool unitpool
---@param forWhichPlayer player
---@param x number
---@param y number
---@param facing number
---@return unit
function PlaceRandomUnit(whichPool, forWhichPlayer, x, y, facing) end

---@return itempool
function CreateItemPool() end

---@param whichItemPool itempool
function DestroyItemPool(whichItemPool) end

---@param whichItemPool itempool
---@param itemId integer
---@param weight number
function ItemPoolAddItemType(whichItemPool, itemId, weight) end

---@param whichItemPool itempool
---@param itemId integer
function ItemPoolRemoveItemType(whichItemPool, itemId) end

---@param whichItemPool itempool
---@param x number
---@param y number
---@return item
function PlaceRandomItem(whichItemPool, x, y) end

---@param level integer
---@return integer
function ChooseRandomCreep(level) end

---@return integer
function ChooseRandomNPBuilding() end

---@param level integer
---@return integer
function ChooseRandomItem(level) end

---@param whichType itemtype
---@param level integer
---@return integer
function ChooseRandomItemEx(whichType, level) end

---@param seed integer
function SetRandomSeed(seed) end

---@param a number
---@param b number
---@param c number
---@param d number
---@param e number
function SetTerrainFog(a, b, c, d, e) end

function ResetTerrainFog() end

---@param a number
---@param b number
---@param c number
---@param d number
---@param e number
function SetUnitFog(a, b, c, d, e) end

---@param style integer
---@param zstart number
---@param zend number
---@param density number
---@param red number
---@param green number
---@param blue number
function SetTerrainFogEx(style, zstart, zend, density, red, green, blue) end

---@param toPlayer player
---@param x number
---@param y number
---@param message string
function DisplayTextToPlayer(toPlayer, x, y, message) end

---@param toPlayer player
---@param x number
---@param y number
---@param duration number
---@param message string
function DisplayTimedTextToPlayer(toPlayer, x, y, duration, message) end

---@param toPlayer player
---@param x number
---@param y number
---@param duration number
---@param message string
function DisplayTimedTextFromPlayer(toPlayer, x, y, duration, message) end

function ClearTextMessages() end

---@param terrainDNCFile string
---@param unitDNCFile string
function SetDayNightModels(terrainDNCFile, unitDNCFile) end

---@param portraitDNCFile string
function SetPortraitLight(portraitDNCFile) end

---@param skyModelFile string
function SetSkyModel(skyModelFile) end

---@param b boolean
function EnableUserControl(b) end

---@param b boolean
function EnableUserUI(b) end

---@param b boolean
function SuspendTimeOfDay(b) end

---@param r number
function SetTimeOfDayScale(r) end

---@return number
function GetTimeOfDayScale() end

---@param flag boolean
---@param fadeDuration number
function ShowInterface(flag, fadeDuration) end

---@param flag boolean
function PauseGame(flag) end

---@param whichUnit unit
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function UnitAddIndicator(whichUnit, red, green, blue, alpha) end

---@param whichWidget widget
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function AddIndicator(whichWidget, red, green, blue, alpha) end

---@param x number
---@param y number
---@param duration number
function PingMinimap(x, y, duration) end

---@param x number
---@param y number
---@param duration number
---@param red integer
---@param green integer
---@param blue integer
---@param extraEffects boolean
function PingMinimapEx(x, y, duration, red, green, blue, extraEffects) end

---@param whichUnit unit
---@param red integer
---@param green integer
---@param blue integer
---@param pingPath string
---@param fogVisibility fogstate
---@return minimapicon
function CreateMinimapIconOnUnit(whichUnit, red, green, blue, pingPath, fogVisibility) end

---@param where location
---@param red integer
---@param green integer
---@param blue integer
---@param pingPath string
---@param fogVisibility fogstate
---@return minimapicon
function CreateMinimapIconAtLoc(where, red, green, blue, pingPath, fogVisibility) end

---@param x number
---@param y number
---@param red integer
---@param green integer
---@param blue integer
---@param pingPath string
---@param fogVisibility fogstate
---@return minimapicon
function CreateMinimapIcon(x, y, red, green, blue, pingPath, fogVisibility) end

---@param key string
---@return string
function SkinManagerGetLocalPath(key) end

---@param pingId minimapicon
function DestroyMinimapIcon(pingId) end

---@param whichMinimapIcon minimapicon
---@param visible boolean
function SetMinimapIconVisible(whichMinimapIcon, visible) end

---@param whichMinimapIcon minimapicon
---@param doDestroy boolean
function SetMinimapIconOrphanDestroy(whichMinimapIcon, doDestroy) end

---@param flag boolean
function EnableOcclusion(flag) end

---@param introText string
function SetIntroShotText(introText) end

---@param introModelPath string
function SetIntroShotModel(introModelPath) end

---@param b boolean
function EnableWorldFogBoundary(b) end

---@param modelName string
function PlayModelCinematic(modelName) end

---@param movieName string
function PlayCinematic(movieName) end

---@param key string
function ForceUIKey(key) end

function ForceUICancel() end

function DisplayLoadDialog() end

---@param iconPath string
function SetAltMinimapIcon(iconPath) end

---@param flag boolean
function DisableRestartMission(flag) end

---@return texttag
function CreateTextTag() end

---@param t texttag
function DestroyTextTag(t) end

---@param t texttag
---@param s string
---@param height number
function SetTextTagText(t, s, height) end

---@param t texttag
---@param x number
---@param y number
---@param heightOffset number
function SetTextTagPos(t, x, y, heightOffset) end

---@param t texttag
---@param whichUnit unit
---@param heightOffset number
function SetTextTagPosUnit(t, whichUnit, heightOffset) end

---@param t texttag
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function SetTextTagColor(t, red, green, blue, alpha) end

---@param t texttag
---@param xvel number
---@param yvel number
function SetTextTagVelocity(t, xvel, yvel) end

---@param t texttag
---@param flag boolean
function SetTextTagVisibility(t, flag) end

---@param t texttag
---@param flag boolean
function SetTextTagSuspended(t, flag) end

---@param t texttag
---@param flag boolean
function SetTextTagPermanent(t, flag) end

---@param t texttag
---@param age number
function SetTextTagAge(t, age) end

---@param t texttag
---@param lifespan number
function SetTextTagLifespan(t, lifespan) end

---@param t texttag
---@param fadepoint number
function SetTextTagFadepoint(t, fadepoint) end

---@param reserved integer
function SetReservedLocalHeroButtons(reserved) end

---@return integer
function GetAllyColorFilterState() end

---@param state integer
function SetAllyColorFilterState(state) end

---@return boolean
function GetCreepCampFilterState() end

---@param state boolean
function SetCreepCampFilterState(state) end

---@param enableAlly boolean
---@param enableCreep boolean
function EnableMinimapFilterButtons(enableAlly, enableCreep) end

---@param state boolean
---@param ui boolean
function EnableDragSelect(state, ui) end

---@param state boolean
---@param ui boolean
function EnablePreSelect(state, ui) end

---@param state boolean
---@param ui boolean
function EnableSelect(state, ui) end

---@param trackableModelPath string
---@param x number
---@param y number
---@param facing number
---@return trackable
function CreateTrackable(trackableModelPath, x, y, facing) end

---@return quest
function CreateQuest() end

---@param whichQuest quest
function DestroyQuest(whichQuest) end

---@param whichQuest quest
---@param title string
function QuestSetTitle(whichQuest, title) end

---@param whichQuest quest
---@param description string
function QuestSetDescription(whichQuest, description) end

---@param whichQuest quest
---@param iconPath string
function QuestSetIconPath(whichQuest, iconPath) end

---@param whichQuest quest
---@param required boolean
function QuestSetRequired(whichQuest, required) end

---@param whichQuest quest
---@param completed boolean
function QuestSetCompleted(whichQuest, completed) end

---@param whichQuest quest
---@param discovered boolean
function QuestSetDiscovered(whichQuest, discovered) end

---@param whichQuest quest
---@param failed boolean
function QuestSetFailed(whichQuest, failed) end

---@param whichQuest quest
---@param enabled boolean
function QuestSetEnabled(whichQuest, enabled) end

---@param whichQuest quest
---@return boolean
function IsQuestRequired(whichQuest) end

---@param whichQuest quest
---@return boolean
function IsQuestCompleted(whichQuest) end

---@param whichQuest quest
---@return boolean
function IsQuestDiscovered(whichQuest) end

---@param whichQuest quest
---@return boolean
function IsQuestFailed(whichQuest) end

---@param whichQuest quest
---@return boolean
function IsQuestEnabled(whichQuest) end

---@param whichQuest quest
---@return questitem
function QuestCreateItem(whichQuest) end

---@param whichQuestItem questitem
---@param description string
function QuestItemSetDescription(whichQuestItem, description) end

---@param whichQuestItem questitem
---@param completed boolean
function QuestItemSetCompleted(whichQuestItem, completed) end

---@param whichQuestItem questitem
---@return boolean
function IsQuestItemCompleted(whichQuestItem) end

---@return defeatcondition
function CreateDefeatCondition() end

---@param whichCondition defeatcondition
function DestroyDefeatCondition(whichCondition) end

---@param whichCondition defeatcondition
---@param description string
function DefeatConditionSetDescription(whichCondition, description) end

function FlashQuestDialogButton() end

function ForceQuestDialogUpdate() end

---@param t timer
---@return timerdialog
function CreateTimerDialog(t) end

---@param whichDialog timerdialog
function DestroyTimerDialog(whichDialog) end

---@param whichDialog timerdialog
---@param title string
function TimerDialogSetTitle(whichDialog, title) end

---@param whichDialog timerdialog
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function TimerDialogSetTitleColor(whichDialog, red, green, blue, alpha) end

---@param whichDialog timerdialog
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function TimerDialogSetTimeColor(whichDialog, red, green, blue, alpha) end

---@param whichDialog timerdialog
---@param speedMultFactor number
function TimerDialogSetSpeed(whichDialog, speedMultFactor) end

---@param whichDialog timerdialog
---@param display boolean
function TimerDialogDisplay(whichDialog, display) end

---@param whichDialog timerdialog
---@return boolean
function IsTimerDialogDisplayed(whichDialog) end

---@param whichDialog timerdialog
---@param timeRemaining number
function TimerDialogSetRealTimeRemaining(whichDialog, timeRemaining) end

---@return leaderboard
function CreateLeaderboard() end

---@param lb leaderboard
function DestroyLeaderboard(lb) end

---@param lb leaderboard
---@param show boolean
function LeaderboardDisplay(lb, show) end

---@param lb leaderboard
---@return boolean
function IsLeaderboardDisplayed(lb) end

---@param lb leaderboard
---@return integer
function LeaderboardGetItemCount(lb) end

---@param lb leaderboard
---@param count integer
function LeaderboardSetSizeByItemCount(lb, count) end

---@param lb leaderboard
---@param label string
---@param value integer
---@param p player
function LeaderboardAddItem(lb, label, value, p) end

---@param lb leaderboard
---@param index integer
function LeaderboardRemoveItem(lb, index) end

---@param lb leaderboard
---@param p player
function LeaderboardRemovePlayerItem(lb, p) end

---@param lb leaderboard
function LeaderboardClear(lb) end

---@param lb leaderboard
---@param ascending boolean
function LeaderboardSortItemsByValue(lb, ascending) end

---@param lb leaderboard
---@param ascending boolean
function LeaderboardSortItemsByPlayer(lb, ascending) end

---@param lb leaderboard
---@param ascending boolean
function LeaderboardSortItemsByLabel(lb, ascending) end

---@param lb leaderboard
---@param p player
---@return boolean
function LeaderboardHasPlayerItem(lb, p) end

---@param lb leaderboard
---@param p player
---@return integer
function LeaderboardGetPlayerIndex(lb, p) end

---@param lb leaderboard
---@param label string
function LeaderboardSetLabel(lb, label) end

---@param lb leaderboard
---@return string
function LeaderboardGetLabelText(lb) end

---@param toPlayer player
---@param lb leaderboard
function PlayerSetLeaderboard(toPlayer, lb) end

---@param toPlayer player
---@return leaderboard
function PlayerGetLeaderboard(toPlayer) end

---@param lb leaderboard
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function LeaderboardSetLabelColor(lb, red, green, blue, alpha) end

---@param lb leaderboard
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function LeaderboardSetValueColor(lb, red, green, blue, alpha) end

---@param lb leaderboard
---@param showLabel boolean
---@param showNames boolean
---@param showValues boolean
---@param showIcons boolean
function LeaderboardSetStyle(lb, showLabel, showNames, showValues, showIcons) end

---@param lb leaderboard
---@param whichItem integer
---@param val integer
function LeaderboardSetItemValue(lb, whichItem, val) end

---@param lb leaderboard
---@param whichItem integer
---@param val string
function LeaderboardSetItemLabel(lb, whichItem, val) end

---@param lb leaderboard
---@param whichItem integer
---@param showLabel boolean
---@param showValue boolean
---@param showIcon boolean
function LeaderboardSetItemStyle(lb, whichItem, showLabel, showValue, showIcon) end

---@param lb leaderboard
---@param whichItem integer
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function LeaderboardSetItemLabelColor(lb, whichItem, red, green, blue, alpha) end

---@param lb leaderboard
---@param whichItem integer
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function LeaderboardSetItemValueColor(lb, whichItem, red, green, blue, alpha) end

---@return multiboard
function CreateMultiboard() end

---@param lb multiboard
function DestroyMultiboard(lb) end

---@param lb multiboard
---@param show boolean
function MultiboardDisplay(lb, show) end

---@param lb multiboard
---@return boolean
function IsMultiboardDisplayed(lb) end

---@param lb multiboard
---@param minimize boolean
function MultiboardMinimize(lb, minimize) end

---@param lb multiboard
---@return boolean
function IsMultiboardMinimized(lb) end

---@param lb multiboard
function MultiboardClear(lb) end

---@param lb multiboard
---@param label string
function MultiboardSetTitleText(lb, label) end

---@param lb multiboard
---@return string
function MultiboardGetTitleText(lb) end

---@param lb multiboard
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function MultiboardSetTitleTextColor(lb, red, green, blue, alpha) end

---@param lb multiboard
---@return integer
function MultiboardGetRowCount(lb) end

---@param lb multiboard
---@return integer
function MultiboardGetColumnCount(lb) end

---@param lb multiboard
---@param count integer
function MultiboardSetColumnCount(lb, count) end

---@param lb multiboard
---@param count integer
function MultiboardSetRowCount(lb, count) end

---@param lb multiboard
---@param showValues boolean
---@param showIcons boolean
function MultiboardSetItemsStyle(lb, showValues, showIcons) end

---@param lb multiboard
---@param value string
function MultiboardSetItemsValue(lb, value) end

---@param lb multiboard
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function MultiboardSetItemsValueColor(lb, red, green, blue, alpha) end

---@param lb multiboard
---@param width number
function MultiboardSetItemsWidth(lb, width) end

---@param lb multiboard
---@param iconPath string
function MultiboardSetItemsIcon(lb, iconPath) end

---@param lb multiboard
---@param row integer
---@param column integer
---@return multiboarditem
function MultiboardGetItem(lb, row, column) end

---@param mbi multiboarditem
function MultiboardReleaseItem(mbi) end

---@param mbi multiboarditem
---@param showValue boolean
---@param showIcon boolean
function MultiboardSetItemStyle(mbi, showValue, showIcon) end

---@param mbi multiboarditem
---@param val string
function MultiboardSetItemValue(mbi, val) end

---@param mbi multiboarditem
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function MultiboardSetItemValueColor(mbi, red, green, blue, alpha) end

---@param mbi multiboarditem
---@param width number
function MultiboardSetItemWidth(mbi, width) end

---@param mbi multiboarditem
---@param iconFileName string
function MultiboardSetItemIcon(mbi, iconFileName) end

---@param flag boolean
function MultiboardSuppressDisplay(flag) end

---@param x number
---@param y number
function SetCameraPosition(x, y) end

---@param x number
---@param y number
function SetCameraQuickPosition(x, y) end

---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param x3 number
---@param y3 number
---@param x4 number
---@param y4 number
function SetCameraBounds(x1, y1, x2, y2, x3, y3, x4, y4) end

function StopCamera() end

---@param duration number
function ResetToGameCamera(duration) end

---@param x number
---@param y number
function PanCameraTo(x, y) end

---@param x number
---@param y number
---@param duration number
function PanCameraToTimed(x, y, duration) end

---@param x number
---@param y number
---@param zOffsetDest number
function PanCameraToWithZ(x, y, zOffsetDest) end

---@param x number
---@param y number
---@param zOffsetDest number
---@param duration number
function PanCameraToTimedWithZ(x, y, zOffsetDest, duration) end

---@param cameraModelFile string
function SetCinematicCamera(cameraModelFile) end

---@param x number
---@param y number
---@param radiansToSweep number
---@param duration number
function SetCameraRotateMode(x, y, radiansToSweep, duration) end

---@param whichField camerafield
---@param value number
---@param duration number
function SetCameraField(whichField, value, duration) end

---@param whichField camerafield
---@param offset number
---@param duration number
function AdjustCameraField(whichField, offset, duration) end

---@param whichUnit unit
---@param xoffset number
---@param yoffset number
---@param inheritOrientation boolean
function SetCameraTargetController(whichUnit, xoffset, yoffset, inheritOrientation) end

---@param whichUnit unit
---@param xoffset number
---@param yoffset number
function SetCameraOrientController(whichUnit, xoffset, yoffset) end

---@return camerasetup
function CreateCameraSetup() end

---@param whichSetup camerasetup
---@param whichField camerafield
---@param value number
---@param duration number
function CameraSetupSetField(whichSetup, whichField, value, duration) end

---@param whichSetup camerasetup
---@param whichField camerafield
---@return number
function CameraSetupGetField(whichSetup, whichField) end

---@param whichSetup camerasetup
---@param x number
---@param y number
---@param duration number
function CameraSetupSetDestPosition(whichSetup, x, y, duration) end

---@param whichSetup camerasetup
---@return location
function CameraSetupGetDestPositionLoc(whichSetup) end

---@param whichSetup camerasetup
---@return number
function CameraSetupGetDestPositionX(whichSetup) end

---@param whichSetup camerasetup
---@return number
function CameraSetupGetDestPositionY(whichSetup) end

---@param whichSetup camerasetup
---@param doPan boolean
---@param panTimed boolean
function CameraSetupApply(whichSetup, doPan, panTimed) end

---@param whichSetup camerasetup
---@param zDestOffset number
function CameraSetupApplyWithZ(whichSetup, zDestOffset) end

---@param whichSetup camerasetup
---@param doPan boolean
---@param forceDuration number
function CameraSetupApplyForceDuration(whichSetup, doPan, forceDuration) end

---@param whichSetup camerasetup
---@param zDestOffset number
---@param forceDuration number
function CameraSetupApplyForceDurationWithZ(whichSetup, zDestOffset, forceDuration) end

---@param whichSetup camerasetup
---@param label string
function BlzCameraSetupSetLabel(whichSetup, label) end

---@param whichSetup camerasetup
---@return string
function BlzCameraSetupGetLabel(whichSetup) end

---@param mag number
---@param velocity number
function CameraSetTargetNoise(mag, velocity) end

---@param mag number
---@param velocity number
function CameraSetSourceNoise(mag, velocity) end

---@param mag number
---@param velocity number
---@param vertOnly boolean
function CameraSetTargetNoiseEx(mag, velocity, vertOnly) end

---@param mag number
---@param velocity number
---@param vertOnly boolean
function CameraSetSourceNoiseEx(mag, velocity, vertOnly) end

---@param factor number
function CameraSetSmoothingFactor(factor) end

---@param distance number
function CameraSetFocalDistance(distance) end

---@param scale number
function CameraSetDepthOfFieldScale(scale) end

---@param filename string
function SetCineFilterTexture(filename) end

---@param whichMode blendmode
function SetCineFilterBlendMode(whichMode) end

---@param whichFlags texmapflags
function SetCineFilterTexMapFlags(whichFlags) end

---@param minu number
---@param minv number
---@param maxu number
---@param maxv number
function SetCineFilterStartUV(minu, minv, maxu, maxv) end

---@param minu number
---@param minv number
---@param maxu number
---@param maxv number
function SetCineFilterEndUV(minu, minv, maxu, maxv) end

---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function SetCineFilterStartColor(red, green, blue, alpha) end

---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function SetCineFilterEndColor(red, green, blue, alpha) end

---@param duration number
function SetCineFilterDuration(duration) end

---@param flag boolean
function DisplayCineFilter(flag) end

---@return boolean
function IsCineFilterDisplayed() end

---@param portraitUnitId integer
---@param color playercolor
---@param speakerTitle string
---@param text string
---@param sceneDuration number
---@param voiceoverDuration number
function SetCinematicScene(portraitUnitId, color, speakerTitle, text, sceneDuration, voiceoverDuration) end

function EndCinematicScene() end

---@param flag boolean
function ForceCinematicSubtitles(flag) end

---@param cinematicAudio boolean
function SetCinematicAudio(cinematicAudio) end

---@param whichMargin integer
---@return number
function GetCameraMargin(whichMargin) end

---@return number
function GetCameraBoundMinX() end

---@return number
function GetCameraBoundMinY() end

---@return number
function GetCameraBoundMaxX() end

---@return number
function GetCameraBoundMaxY() end

---@param whichField camerafield
---@return number
function GetCameraField(whichField) end

---@return number
function GetCameraTargetPositionX() end

---@return number
function GetCameraTargetPositionY() end

---@return number
function GetCameraTargetPositionZ() end

---@return location
function GetCameraTargetPositionLoc() end

---@return number
function GetCameraEyePositionX() end

---@return number
function GetCameraEyePositionY() end

---@return number
function GetCameraEyePositionZ() end

---@return location
function GetCameraEyePositionLoc() end

---@param environmentName string
function NewSoundEnvironment(environmentName) end

---@param fileName string
---@param looping boolean
---@param is3D boolean
---@param stopwhenoutofrange boolean
---@param fadeInRate integer
---@param fadeOutRate integer
---@param eaxSetting string
---@return sound
function CreateSound(fileName, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate, eaxSetting) end

---@param fileName string
---@param looping boolean
---@param is3D boolean
---@param stopwhenoutofrange boolean
---@param fadeInRate integer
---@param fadeOutRate integer
---@param SLKEntryName string
---@return sound
function CreateSoundFilenameWithLabel(fileName, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate, SLKEntryName) end

---@param soundLabel string
---@param looping boolean
---@param is3D boolean
---@param stopwhenoutofrange boolean
---@param fadeInRate integer
---@param fadeOutRate integer
---@return sound
function CreateSoundFromLabel(soundLabel, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate) end

---@param soundLabel string
---@param fadeInRate integer
---@param fadeOutRate integer
---@return sound
function CreateMIDISound(soundLabel, fadeInRate, fadeOutRate) end

---@param soundHandle sound
---@param soundLabel string
function SetSoundParamsFromLabel(soundHandle, soundLabel) end

---@param soundHandle sound
---@param cutoff number
function SetSoundDistanceCutoff(soundHandle, cutoff) end

---@param soundHandle sound
---@param channel integer
function SetSoundChannel(soundHandle, channel) end

---@param soundHandle sound
---@param volume integer
function SetSoundVolume(soundHandle, volume) end

---@param soundHandle sound
---@param pitch number
function SetSoundPitch(soundHandle, pitch) end

---@param soundHandle sound
---@param millisecs integer
function SetSoundPlayPosition(soundHandle, millisecs) end

---@param soundHandle sound
---@param minDist number
---@param maxDist number
function SetSoundDistances(soundHandle, minDist, maxDist) end

---@param soundHandle sound
---@param inside number
---@param outside number
---@param outsideVolume integer
function SetSoundConeAngles(soundHandle, inside, outside, outsideVolume) end

---@param soundHandle sound
---@param x number
---@param y number
---@param z number
function SetSoundConeOrientation(soundHandle, x, y, z) end

---@param soundHandle sound
---@param x number
---@param y number
---@param z number
function SetSoundPosition(soundHandle, x, y, z) end

---@param soundHandle sound
---@param x number
---@param y number
---@param z number
function SetSoundVelocity(soundHandle, x, y, z) end

---@param soundHandle sound
---@param whichUnit unit
function AttachSoundToUnit(soundHandle, whichUnit) end

---@param soundHandle sound
function StartSound(soundHandle) end

---@param soundHandle sound
---@param fadeIn boolean
function StartSoundEx(soundHandle, fadeIn) end

---@param soundHandle sound
---@param killWhenDone boolean
---@param fadeOut boolean
function StopSound(soundHandle, killWhenDone, fadeOut) end

---@param soundHandle sound
function KillSoundWhenDone(soundHandle) end

---@param musicName string
---@param random boolean
---@param index integer
function SetMapMusic(musicName, random, index) end

function ClearMapMusic() end

---@param musicName string
function PlayMusic(musicName) end

---@param musicName string
---@param frommsecs integer
---@param fadeinmsecs integer
function PlayMusicEx(musicName, frommsecs, fadeinmsecs) end

---@param fadeOut boolean
function StopMusic(fadeOut) end

function ResumeMusic() end

---@param musicFileName string
function PlayThematicMusic(musicFileName) end

---@param musicFileName string
---@param frommsecs integer
function PlayThematicMusicEx(musicFileName, frommsecs) end

function EndThematicMusic() end

---@param volume integer
function SetMusicVolume(volume) end

---@param millisecs integer
function SetMusicPlayPosition(millisecs) end

---@param volume integer
function SetThematicMusicVolume(volume) end

---@param millisecs integer
function SetThematicMusicPlayPosition(millisecs) end

---@param soundHandle sound
---@param duration integer
function SetSoundDuration(soundHandle, duration) end

---@param soundHandle sound
---@return integer
function GetSoundDuration(soundHandle) end

---@param musicFileName string
---@return integer
function GetSoundFileDuration(musicFileName) end

---@param vgroup volumegroup
---@param scale number
function VolumeGroupSetVolume(vgroup, scale) end

function VolumeGroupReset() end

---@param soundHandle sound
---@return boolean
function GetSoundIsPlaying(soundHandle) end

---@param soundHandle sound
---@return boolean
function GetSoundIsLoading(soundHandle) end

---@param soundHandle sound
---@param byPosition boolean
---@param rectwidth number
---@param rectheight number
function RegisterStackedSound(soundHandle, byPosition, rectwidth, rectheight) end

---@param soundHandle sound
---@param byPosition boolean
---@param rectwidth number
---@param rectheight number
function UnregisterStackedSound(soundHandle, byPosition, rectwidth, rectheight) end

---@param soundHandle sound
---@param animationLabel string
---@return boolean
function SetSoundFacialAnimationLabel(soundHandle, animationLabel) end

---@param soundHandle sound
---@param groupLabel string
---@return boolean
function SetSoundFacialAnimationGroupLabel(soundHandle, groupLabel) end

---@param soundHandle sound
---@param animationSetFilepath string
---@return boolean
function SetSoundFacialAnimationSetFilepath(soundHandle, animationSetFilepath) end

---@param soundHandle sound
---@param speakerName string
---@return boolean
function SetDialogueSpeakerNameKey(soundHandle, speakerName) end

---@param soundHandle sound
---@return string
function GetDialogueSpeakerNameKey(soundHandle) end

---@param soundHandle sound
---@param dialogueText string
---@return boolean
function SetDialogueTextKey(soundHandle, dialogueText) end

---@param soundHandle sound
---@return string
function GetDialogueTextKey(soundHandle) end

---@param where rect
---@param effectID integer
---@return weathereffect
function AddWeatherEffect(where, effectID) end

---@param whichEffect weathereffect
function RemoveWeatherEffect(whichEffect) end

---@param whichEffect weathereffect
---@param enable boolean
function EnableWeatherEffect(whichEffect, enable) end

---@param x number
---@param y number
---@param radius number
---@param depth number
---@param duration integer
---@param permanent boolean
---@return terraindeformation
function TerrainDeformCrater(x, y, radius, depth, duration, permanent) end

---@param x number
---@param y number
---@param radius number
---@param depth number
---@param duration integer
---@param count integer
---@param spaceWaves number
---@param timeWaves number
---@param radiusStartPct number
---@param limitNeg boolean
---@return terraindeformation
function TerrainDeformRipple(x, y, radius, depth, duration, count, spaceWaves, timeWaves, radiusStartPct, limitNeg) end

---@param x number
---@param y number
---@param dirX number
---@param dirY number
---@param distance number
---@param speed number
---@param radius number
---@param depth number
---@param trailTime integer
---@param count integer
---@return terraindeformation
function TerrainDeformWave(x, y, dirX, dirY, distance, speed, radius, depth, trailTime, count) end

---@param x number
---@param y number
---@param radius number
---@param minDelta number
---@param maxDelta number
---@param duration integer
---@param updateInterval integer
---@return terraindeformation
function TerrainDeformRandom(x, y, radius, minDelta, maxDelta, duration, updateInterval) end

---@param deformation terraindeformation
---@param duration integer
function TerrainDeformStop(deformation, duration) end

function TerrainDeformStopAll() end

---@param modelName string
---@param x number
---@param y number
---@return effect
function AddSpecialEffect(modelName, x, y) end

---@param modelName string
---@param where location
---@return effect
function AddSpecialEffectLoc(modelName, where) end

---@param modelName string
---@param targetWidget widget
---@param attachPointName string
---@return effect
function AddSpecialEffectTarget(modelName, targetWidget, attachPointName) end

---@param whichEffect effect
function DestroyEffect(whichEffect) end

---@param abilityString string
---@param t effecttype
---@param x number
---@param y number
---@return effect
function AddSpellEffect(abilityString, t, x, y) end

---@param abilityString string
---@param t effecttype
---@param where location
---@return effect
function AddSpellEffectLoc(abilityString, t, where) end

---@param abilityId integer
---@param t effecttype
---@param x number
---@param y number
---@return effect
function AddSpellEffectById(abilityId, t, x, y) end

---@param abilityId integer
---@param t effecttype
---@param where location
---@return effect
function AddSpellEffectByIdLoc(abilityId, t, where) end

---@param modelName string
---@param t effecttype
---@param targetWidget widget
---@param attachPoint string
---@return effect
function AddSpellEffectTarget(modelName, t, targetWidget, attachPoint) end

---@param abilityId integer
---@param t effecttype
---@param targetWidget widget
---@param attachPoint string
---@return effect
function AddSpellEffectTargetById(abilityId, t, targetWidget, attachPoint) end

---@param codeName string
---@param checkVisibility boolean
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return lightning
function AddLightning(codeName, checkVisibility, x1, y1, x2, y2) end

---@param codeName string
---@param checkVisibility boolean
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return lightning
function AddLightningEx(codeName, checkVisibility, x1, y1, z1, x2, y2, z2) end

---@param whichBolt lightning
---@return boolean
function DestroyLightning(whichBolt) end

---@param whichBolt lightning
---@param checkVisibility boolean
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return boolean
function MoveLightning(whichBolt, checkVisibility, x1, y1, x2, y2) end

---@param whichBolt lightning
---@param checkVisibility boolean
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return boolean
function MoveLightningEx(whichBolt, checkVisibility, x1, y1, z1, x2, y2, z2) end

---@param whichBolt lightning
---@return number
function GetLightningColorA(whichBolt) end

---@param whichBolt lightning
---@return number
function GetLightningColorR(whichBolt) end

---@param whichBolt lightning
---@return number
function GetLightningColorG(whichBolt) end

---@param whichBolt lightning
---@return number
function GetLightningColorB(whichBolt) end

---@param whichBolt lightning
---@param r number
---@param g number
---@param b number
---@param a number
---@return boolean
function SetLightningColor(whichBolt, r, g, b, a) end

---@param abilityString string
---@param t effecttype
---@param index integer
---@return string
function GetAbilityEffect(abilityString, t, index) end

---@param abilityId integer
---@param t effecttype
---@param index integer
---@return string
function GetAbilityEffectById(abilityId, t, index) end

---@param abilityString string
---@param t soundtype
---@return string
function GetAbilitySound(abilityString, t) end

---@param abilityId integer
---@param t soundtype
---@return string
function GetAbilitySoundById(abilityId, t) end

---@param x number
---@param y number
---@return integer
function GetTerrainCliffLevel(x, y) end

---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function SetWaterBaseColor(red, green, blue, alpha) end

---@param val boolean
function SetWaterDeforms(val) end

---@param x number
---@param y number
---@return integer
function GetTerrainType(x, y) end

---@param x number
---@param y number
---@return integer
function GetTerrainVariance(x, y) end

---@param x number
---@param y number
---@param terrainType integer
---@param variation integer
---@param area integer
---@param shape integer
function SetTerrainType(x, y, terrainType, variation, area, shape) end

---@param x number
---@param y number
---@param t pathingtype
---@return boolean
function IsTerrainPathable(x, y, t) end

---@param x number
---@param y number
---@param t pathingtype
---@param flag boolean
function SetTerrainPathable(x, y, t, flag) end

---@param file string
---@param sizeX number
---@param sizeY number
---@param sizeZ number
---@param posX number
---@param posY number
---@param posZ number
---@param originX number
---@param originY number
---@param originZ number
---@param imageType integer
---@return image
function CreateImage(file, sizeX, sizeY, sizeZ, posX, posY, posZ, originX, originY, originZ, imageType) end

---@param whichImage image
function DestroyImage(whichImage) end

---@param whichImage image
---@param flag boolean
function ShowImage(whichImage, flag) end

---@param whichImage image
---@param flag boolean
---@param height number
function SetImageConstantHeight(whichImage, flag, height) end

---@param whichImage image
---@param x number
---@param y number
---@param z number
function SetImagePosition(whichImage, x, y, z) end

---@param whichImage image
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function SetImageColor(whichImage, red, green, blue, alpha) end

---@param whichImage image
---@param flag boolean
function SetImageRender(whichImage, flag) end

---@param whichImage image
---@param flag boolean
function SetImageRenderAlways(whichImage, flag) end

---@param whichImage image
---@param flag boolean
---@param useWaterAlpha boolean
function SetImageAboveWater(whichImage, flag, useWaterAlpha) end

---@param whichImage image
---@param imageType integer
function SetImageType(whichImage, imageType) end

---@param x number
---@param y number
---@param name string
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param forcePaused boolean
---@param noBirthTime boolean
---@return ubersplat
function CreateUbersplat(x, y, name, red, green, blue, alpha, forcePaused, noBirthTime) end

---@param whichSplat ubersplat
function DestroyUbersplat(whichSplat) end

---@param whichSplat ubersplat
function ResetUbersplat(whichSplat) end

---@param whichSplat ubersplat
function FinishUbersplat(whichSplat) end

---@param whichSplat ubersplat
---@param flag boolean
function ShowUbersplat(whichSplat, flag) end

---@param whichSplat ubersplat
---@param flag boolean
function SetUbersplatRender(whichSplat, flag) end

---@param whichSplat ubersplat
---@param flag boolean
function SetUbersplatRenderAlways(whichSplat, flag) end

---@param whichPlayer player
---@param x number
---@param y number
---@param radius number
---@param addBlight boolean
function SetBlight(whichPlayer, x, y, radius, addBlight) end

---@param whichPlayer player
---@param r rect
---@param addBlight boolean
function SetBlightRect(whichPlayer, r, addBlight) end

---@param whichPlayer player
---@param x number
---@param y number
---@param addBlight boolean
function SetBlightPoint(whichPlayer, x, y, addBlight) end

---@param whichPlayer player
---@param whichLocation location
---@param radius number
---@param addBlight boolean
function SetBlightLoc(whichPlayer, whichLocation, radius, addBlight) end

---@param id player
---@param x number
---@param y number
---@param face number
---@return unit
function CreateBlightedGoldmine(id, x, y, face) end

---@param x number
---@param y number
---@return boolean
function IsPointBlighted(x, y) end

---@param x number
---@param y number
---@param radius number
---@param doodadID integer
---@param nearestOnly boolean
---@param animName string
---@param animRandom boolean
function SetDoodadAnimation(x, y, radius, doodadID, nearestOnly, animName, animRandom) end

---@param r rect
---@param doodadID integer
---@param animName string
---@param animRandom boolean
function SetDoodadAnimationRect(r, doodadID, animName, animRandom) end

---@param num player
---@param script string
function StartMeleeAI(num, script) end

---@param num player
---@param script string
function StartCampaignAI(num, script) end

---@param num player
---@param command integer
---@param data integer
function CommandAI(num, command, data) end

---@param p player
---@param pause boolean
function PauseCompAI(p, pause) end

---@param num player
---@return aidifficulty
function GetAIDifficulty(num) end

---@param hUnit unit
function RemoveGuardPosition(hUnit) end

---@param hUnit unit
function RecycleGuardPosition(hUnit) end

---@param num player
function RemoveAllGuardPositions(num) end

---@param cheatStr string
function Cheat(cheatStr) end

---@return boolean
function IsNoVictoryCheat() end

---@return boolean
function IsNoDefeatCheat() end

---@param filename string
function Preload(filename) end

---@param timeout number
function PreloadEnd(timeout) end

function PreloadStart() end

function PreloadRefresh() end

function PreloadEndEx() end

function PreloadGenClear() end

function PreloadGenStart() end

---@param filename string
function PreloadGenEnd(filename) end

---@param filename string
function Preloader(filename) end

---@param enable boolean
function BlzHideCinematicPanels(enable) end

---@param testType string
function AutomationSetTestType(testType) end

---@param testName string
function AutomationTestStart(testName) end

function AutomationTestEnd() end

function AutomationTestingFinished() end

---@return number
function BlzGetTriggerPlayerMouseX() end

---@return number
function BlzGetTriggerPlayerMouseY() end

---@return location
function BlzGetTriggerPlayerMousePosition() end

---@return mousebuttontype
function BlzGetTriggerPlayerMouseButton() end

---@param abilCode integer
---@param tooltip string
---@param level integer
function BlzSetAbilityTooltip(abilCode, tooltip, level) end

---@param abilCode integer
---@param tooltip string
---@param level integer
function BlzSetAbilityActivatedTooltip(abilCode, tooltip, level) end

---@param abilCode integer
---@param extendedTooltip string
---@param level integer
function BlzSetAbilityExtendedTooltip(abilCode, extendedTooltip, level) end

---@param abilCode integer
---@param extendedTooltip string
---@param level integer
function BlzSetAbilityActivatedExtendedTooltip(abilCode, extendedTooltip, level) end

---@param abilCode integer
---@param researchTooltip string
---@param level integer
function BlzSetAbilityResearchTooltip(abilCode, researchTooltip, level) end

---@param abilCode integer
---@param researchExtendedTooltip string
---@param level integer
function BlzSetAbilityResearchExtendedTooltip(abilCode, researchExtendedTooltip, level) end

---@param abilCode integer
---@param level integer
---@return string
function BlzGetAbilityTooltip(abilCode, level) end

---@param abilCode integer
---@param level integer
---@return string
function BlzGetAbilityActivatedTooltip(abilCode, level) end

---@param abilCode integer
---@param level integer
---@return string
function BlzGetAbilityExtendedTooltip(abilCode, level) end

---@param abilCode integer
---@param level integer
---@return string
function BlzGetAbilityActivatedExtendedTooltip(abilCode, level) end

---@param abilCode integer
---@param level integer
---@return string
function BlzGetAbilityResearchTooltip(abilCode, level) end

---@param abilCode integer
---@param level integer
---@return string
function BlzGetAbilityResearchExtendedTooltip(abilCode, level) end

---@param abilCode integer
---@param iconPath string
function BlzSetAbilityIcon(abilCode, iconPath) end

---@param abilCode integer
---@return string
function BlzGetAbilityIcon(abilCode) end

---@param abilCode integer
---@param iconPath string
function BlzSetAbilityActivatedIcon(abilCode, iconPath) end

---@param abilCode integer
---@return string
function BlzGetAbilityActivatedIcon(abilCode) end

---@param abilCode integer
---@return integer
function BlzGetAbilityPosX(abilCode) end

---@param abilCode integer
---@return integer
function BlzGetAbilityPosY(abilCode) end

---@param abilCode integer
---@param x integer
function BlzSetAbilityPosX(abilCode, x) end

---@param abilCode integer
---@param y integer
function BlzSetAbilityPosY(abilCode, y) end

---@param abilCode integer
---@return integer
function BlzGetAbilityActivatedPosX(abilCode) end

---@param abilCode integer
---@return integer
function BlzGetAbilityActivatedPosY(abilCode) end

---@param abilCode integer
---@param x integer
function BlzSetAbilityActivatedPosX(abilCode, x) end

---@param abilCode integer
---@param y integer
function BlzSetAbilityActivatedPosY(abilCode, y) end

---@param whichUnit unit
---@return integer
function BlzGetUnitMaxHP(whichUnit) end

---@param whichUnit unit
---@param hp integer
function BlzSetUnitMaxHP(whichUnit, hp) end

---@param whichUnit unit
---@return integer
function BlzGetUnitMaxMana(whichUnit) end

---@param whichUnit unit
---@param mana integer
function BlzSetUnitMaxMana(whichUnit, mana) end

---@param whichItem item
---@param name string
function BlzSetItemName(whichItem, name) end

---@param whichItem item
---@param description string
function BlzSetItemDescription(whichItem, description) end

---@param whichItem item
---@return string
function BlzGetItemDescription(whichItem) end

---@param whichItem item
---@param tooltip string
function BlzSetItemTooltip(whichItem, tooltip) end

---@param whichItem item
---@return string
function BlzGetItemTooltip(whichItem) end

---@param whichItem item
---@param extendedTooltip string
function BlzSetItemExtendedTooltip(whichItem, extendedTooltip) end

---@param whichItem item
---@return string
function BlzGetItemExtendedTooltip(whichItem) end

---@param whichItem item
---@param iconPath string
function BlzSetItemIconPath(whichItem, iconPath) end

---@param whichItem item
---@return string
function BlzGetItemIconPath(whichItem) end

---@param whichUnit unit
---@param name string
function BlzSetUnitName(whichUnit, name) end

---@param whichUnit unit
---@param heroProperName string
function BlzSetHeroProperName(whichUnit, heroProperName) end

---@param whichUnit unit
---@param weaponIndex integer
---@return integer
function BlzGetUnitBaseDamage(whichUnit, weaponIndex) end

---@param whichUnit unit
---@param baseDamage integer
---@param weaponIndex integer
function BlzSetUnitBaseDamage(whichUnit, baseDamage, weaponIndex) end

---@param whichUnit unit
---@param weaponIndex integer
---@return integer
function BlzGetUnitDiceNumber(whichUnit, weaponIndex) end

---@param whichUnit unit
---@param diceNumber integer
---@param weaponIndex integer
function BlzSetUnitDiceNumber(whichUnit, diceNumber, weaponIndex) end

---@param whichUnit unit
---@param weaponIndex integer
---@return integer
function BlzGetUnitDiceSides(whichUnit, weaponIndex) end

---@param whichUnit unit
---@param diceSides integer
---@param weaponIndex integer
function BlzSetUnitDiceSides(whichUnit, diceSides, weaponIndex) end

---@param whichUnit unit
---@param weaponIndex integer
---@return number
function BlzGetUnitAttackCooldown(whichUnit, weaponIndex) end

---@param whichUnit unit
---@param cooldown number
---@param weaponIndex integer
function BlzSetUnitAttackCooldown(whichUnit, cooldown, weaponIndex) end

---@param whichEffect effect
---@param whichPlayer player
function BlzSetSpecialEffectColorByPlayer(whichEffect, whichPlayer) end

---@param whichEffect effect
---@param r integer
---@param g integer
---@param b integer
function BlzSetSpecialEffectColor(whichEffect, r, g, b) end

---@param whichEffect effect
---@param alpha integer
function BlzSetSpecialEffectAlpha(whichEffect, alpha) end

---@param whichEffect effect
---@param scale number
function BlzSetSpecialEffectScale(whichEffect, scale) end

---@param whichEffect effect
---@param x number
---@param y number
---@param z number
function BlzSetSpecialEffectPosition(whichEffect, x, y, z) end

---@param whichEffect effect
---@param height number
function BlzSetSpecialEffectHeight(whichEffect, height) end

---@param whichEffect effect
---@param timeScale number
function BlzSetSpecialEffectTimeScale(whichEffect, timeScale) end

---@param whichEffect effect
---@param time number
function BlzSetSpecialEffectTime(whichEffect, time) end

---@param whichEffect effect
---@param yaw number
---@param pitch number
---@param roll number
function BlzSetSpecialEffectOrientation(whichEffect, yaw, pitch, roll) end

---@param whichEffect effect
---@param yaw number
function BlzSetSpecialEffectYaw(whichEffect, yaw) end

---@param whichEffect effect
---@param pitch number
function BlzSetSpecialEffectPitch(whichEffect, pitch) end

---@param whichEffect effect
---@param roll number
function BlzSetSpecialEffectRoll(whichEffect, roll) end

---@param whichEffect effect
---@param x number
function BlzSetSpecialEffectX(whichEffect, x) end

---@param whichEffect effect
---@param y number
function BlzSetSpecialEffectY(whichEffect, y) end

---@param whichEffect effect
---@param z number
function BlzSetSpecialEffectZ(whichEffect, z) end

---@param whichEffect effect
---@param loc location
function BlzSetSpecialEffectPositionLoc(whichEffect, loc) end

---@param whichEffect effect
---@return number
function BlzGetLocalSpecialEffectX(whichEffect) end

---@param whichEffect effect
---@return number
function BlzGetLocalSpecialEffectY(whichEffect) end

---@param whichEffect effect
---@return number
function BlzGetLocalSpecialEffectZ(whichEffect) end

---@param whichEffect effect
function BlzSpecialEffectClearSubAnimations(whichEffect) end

---@param whichEffect effect
---@param whichSubAnim subanimtype
function BlzSpecialEffectRemoveSubAnimation(whichEffect, whichSubAnim) end

---@param whichEffect effect
---@param whichSubAnim subanimtype
function BlzSpecialEffectAddSubAnimation(whichEffect, whichSubAnim) end

---@param whichEffect effect
---@param whichAnim animtype
function BlzPlaySpecialEffect(whichEffect, whichAnim) end

---@param whichEffect effect
---@param whichAnim animtype
---@param timeScale number
function BlzPlaySpecialEffectWithTimeScale(whichEffect, whichAnim, timeScale) end

---@param whichAnim animtype
---@return string
function BlzGetAnimName(whichAnim) end

---@param whichUnit unit
---@return number
function BlzGetUnitArmor(whichUnit) end

---@param whichUnit unit
---@param armorAmount number
function BlzSetUnitArmor(whichUnit, armorAmount) end

---@param whichUnit unit
---@param abilId integer
---@param flag boolean
function BlzUnitHideAbility(whichUnit, abilId, flag) end

---@param whichUnit unit
---@param abilId integer
---@param flag boolean
---@param hideUI boolean
function BlzUnitDisableAbility(whichUnit, abilId, flag, hideUI) end

---@param whichUnit unit
function BlzUnitCancelTimedLife(whichUnit) end

---@param whichUnit unit
---@return boolean
function BlzIsUnitSelectable(whichUnit) end

---@param whichUnit unit
---@return boolean
function BlzIsUnitInvulnerable(whichUnit) end

---@param whichUnit unit
function BlzUnitInterruptAttack(whichUnit) end

---@param whichUnit unit
---@return number
function BlzGetUnitCollisionSize(whichUnit) end

---@param abilId integer
---@param level integer
---@return integer
function BlzGetAbilityManaCost(abilId, level) end

---@param abilId integer
---@param level integer
---@return number
function BlzGetAbilityCooldown(abilId, level) end

---@param whichUnit unit
---@param abilId integer
---@param level integer
---@param cooldown number
function BlzSetUnitAbilityCooldown(whichUnit, abilId, level, cooldown) end

---@param whichUnit unit
---@param abilId integer
---@param level integer
---@return number
function BlzGetUnitAbilityCooldown(whichUnit, abilId, level) end

---@param whichUnit unit
---@param abilId integer
---@return number
function BlzGetUnitAbilityCooldownRemaining(whichUnit, abilId) end

---@param whichUnit unit
---@param abilCode integer
function BlzEndUnitAbilityCooldown(whichUnit, abilCode) end

---@param whichUnit unit
---@param abilCode integer
---@param cooldown number
function BlzStartUnitAbilityCooldown(whichUnit, abilCode, cooldown) end

---@param whichUnit unit
---@param abilId integer
---@param level integer
---@return integer
function BlzGetUnitAbilityManaCost(whichUnit, abilId, level) end

---@param whichUnit unit
---@param abilId integer
---@param level integer
---@param manaCost integer
function BlzSetUnitAbilityManaCost(whichUnit, abilId, level, manaCost) end

---@param whichUnit unit
---@return number
function BlzGetLocalUnitZ(whichUnit) end

---@param whichPlayer player
---@param techid integer
---@param levels integer
function BlzDecPlayerTechResearched(whichPlayer, techid, levels) end

---@param damage number
function BlzSetEventDamage(damage) end

---@return unit
function BlzGetEventDamageTarget() end

---@return attacktype
function BlzGetEventAttackType() end

---@return damagetype
function BlzGetEventDamageType() end

---@return weapontype
function BlzGetEventWeaponType() end

---@param attackType attacktype
---@return boolean
function BlzSetEventAttackType(attackType) end

---@param damageType damagetype
---@return boolean
function BlzSetEventDamageType(damageType) end

---@param weaponType weapontype
---@return boolean
function BlzSetEventWeaponType(weaponType) end

---@return boolean
function BlzGetEventIsAttack() end

---@param whichUnit unit
---@return number
function BlzGetUnitZ(whichUnit) end

---@param enableSelection boolean
---@param enableSelectionCircle boolean
function BlzEnableSelections(enableSelection, enableSelectionCircle) end

---@return boolean
function BlzIsSelectionEnabled() end

---@return boolean
function BlzIsSelectionCircleEnabled() end

---@param whichSetup camerasetup
---@param doPan boolean
---@param forcedDuration number
---@param easeInDuration number
---@param easeOutDuration number
---@param smoothFactor number
function BlzCameraSetupApplyForceDurationSmooth(whichSetup, doPan, forcedDuration, easeInDuration, easeOutDuration, smoothFactor) end

---@param enable boolean
function BlzEnableTargetIndicator(enable) end

---@return boolean
function BlzIsTargetIndicatorEnabled() end

---@param show boolean
function BlzShowTerrain(show) end

---@param show boolean
function BlzShowSkyBox(show) end

---@param fps integer
function BlzStartRecording(fps) end

function BlzEndRecording() end

---@param whichUnit unit
---@param show boolean
function BlzShowUnitTeamGlow(whichUnit, show) end

---@param frameType originframetype
---@param index integer
---@return framehandle
function BlzGetOriginFrame(frameType, index) end

---@param enable boolean
function BlzEnableUIAutoPosition(enable) end

---@param enable boolean
function BlzHideOriginFrames(enable) end

---@param a integer
---@param r integer
---@param g integer
---@param b integer
---@return integer
function BlzConvertColor(a, r, g, b) end

---@param TOCFile string
---@return boolean
function BlzLoadTOCFile(TOCFile) end

---@param name string
---@param owner framehandle
---@param priority integer
---@param createContext integer
---@return framehandle
function BlzCreateFrame(name, owner, priority, createContext) end

---@param name string
---@param owner framehandle
---@param createContext integer
---@return framehandle
function BlzCreateSimpleFrame(name, owner, createContext) end

---@param typeName string
---@param name string
---@param owner framehandle
---@param inherits string
---@param createContext integer
---@return framehandle
function BlzCreateFrameByType(typeName, name, owner, inherits, createContext) end

---@param frame framehandle
function BlzDestroyFrame(frame) end

---@param frame framehandle
---@param point framepointtype
---@param relative framehandle
---@param relativePoint framepointtype
---@param x number
---@param y number
function BlzFrameSetPoint(frame, point, relative, relativePoint, x, y) end

---@param frame framehandle
---@param point framepointtype
---@param x number
---@param y number
function BlzFrameSetAbsPoint(frame, point, x, y) end

---@param frame framehandle
function BlzFrameClearAllPoints(frame) end

---@param frame framehandle
---@param relative framehandle
function BlzFrameSetAllPoints(frame, relative) end

---@param frame framehandle
---@param visible boolean
function BlzFrameSetVisible(frame, visible) end

---@param frame framehandle
---@return boolean
function BlzFrameIsVisible(frame) end

---@param name string
---@param createContext integer
---@return framehandle
function BlzGetFrameByName(name, createContext) end

---@param frame framehandle
---@return string
function BlzFrameGetName(frame) end

---@param frame framehandle
function BlzFrameClick(frame) end

---@param frame framehandle
---@param text string
function BlzFrameSetText(frame, text) end

---@param frame framehandle
---@return string
function BlzFrameGetText(frame) end

---@param frame framehandle
---@param text string
function BlzFrameAddText(frame, text) end

---@param frame framehandle
---@param size integer
function BlzFrameSetTextSizeLimit(frame, size) end

---@param frame framehandle
---@return integer
function BlzFrameGetTextSizeLimit(frame) end

---@param frame framehandle
---@param color integer
function BlzFrameSetTextColor(frame, color) end

---@param frame framehandle
---@param flag boolean
function BlzFrameSetFocus(frame, flag) end

---@param frame framehandle
---@param modelFile string
---@param cameraIndex integer
function BlzFrameSetModel(frame, modelFile, cameraIndex) end

---@param frame framehandle
---@param enabled boolean
function BlzFrameSetEnable(frame, enabled) end

---@param frame framehandle
---@return boolean
function BlzFrameGetEnable(frame) end

---@param frame framehandle
---@param alpha integer
function BlzFrameSetAlpha(frame, alpha) end

---@param frame framehandle
---@return integer
function BlzFrameGetAlpha(frame) end

---@param frame framehandle
---@param primaryProp integer
---@param flags integer
function BlzFrameSetSpriteAnimate(frame, primaryProp, flags) end

---@param frame framehandle
---@param texFile string
---@param flag integer
---@param blend boolean
function BlzFrameSetTexture(frame, texFile, flag, blend) end

---@param frame framehandle
---@param scale number
function BlzFrameSetScale(frame, scale) end

---@param frame framehandle
---@param tooltip framehandle
function BlzFrameSetTooltip(frame, tooltip) end

---@param frame framehandle
---@param enable boolean
function BlzFrameCageMouse(frame, enable) end

---@param frame framehandle
---@param value number
function BlzFrameSetValue(frame, value) end

---@param frame framehandle
---@return number
function BlzFrameGetValue(frame) end

---@param frame framehandle
---@param minValue number
---@param maxValue number
function BlzFrameSetMinMaxValue(frame, minValue, maxValue) end

---@param frame framehandle
---@param stepSize number
function BlzFrameSetStepSize(frame, stepSize) end

---@param frame framehandle
---@param width number
---@param height number
function BlzFrameSetSize(frame, width, height) end

---@param frame framehandle
---@param color integer
function BlzFrameSetVertexColor(frame, color) end

---@param frame framehandle
---@param level integer
function BlzFrameSetLevel(frame, level) end

---@param frame framehandle
---@param parent framehandle
function BlzFrameSetParent(frame, parent) end

---@param frame framehandle
---@return framehandle
function BlzFrameGetParent(frame) end

---@param frame framehandle
---@return number
function BlzFrameGetHeight(frame) end

---@param frame framehandle
---@return number
function BlzFrameGetWidth(frame) end

---@param frame framehandle
---@param fileName string
---@param height number
---@param flags integer
function BlzFrameSetFont(frame, fileName, height, flags) end

---@param frame framehandle
---@param vert textaligntype
---@param horz textaligntype
function BlzFrameSetTextAlignment(frame, vert, horz) end

---@param frame framehandle
---@return integer
function BlzFrameGetChildrenCount(frame) end

---@param frame framehandle
---@param index integer
---@return framehandle
function BlzFrameGetChild(frame, index) end

---@param whichTrigger trigger
---@param frame framehandle
---@param eventId frameeventtype
---@return event
function BlzTriggerRegisterFrameEvent(whichTrigger, frame, eventId) end

---@return framehandle
function BlzGetTriggerFrame() end

---@return frameeventtype
function BlzGetTriggerFrameEvent() end

---@return number
function BlzGetTriggerFrameValue() end

---@return string
function BlzGetTriggerFrameText() end

---@param whichTrigger trigger
---@param whichPlayer player
---@param prefix string
---@param fromServer boolean
---@return event
function BlzTriggerRegisterPlayerSyncEvent(whichTrigger, whichPlayer, prefix, fromServer) end

---@param prefix string
---@param data string
---@return boolean
function BlzSendSyncData(prefix, data) end

---@return string
function BlzGetTriggerSyncPrefix() end

---@return string
function BlzGetTriggerSyncData() end

---@param whichTrigger trigger
---@param whichPlayer player
---@param key oskeytype
---@param metaKey integer
---@param keyDown boolean
---@return event
function BlzTriggerRegisterPlayerKeyEvent(whichTrigger, whichPlayer, key, metaKey, keyDown) end

---@return oskeytype
function BlzGetTriggerPlayerKey() end

---@return integer
function BlzGetTriggerPlayerMetaKey() end

---@return boolean
function BlzGetTriggerPlayerIsKeyDown() end

---@param enable boolean
function BlzEnableCursor(enable) end

---@param x integer
---@param y integer
function BlzSetMousePos(x, y) end

---@return integer
function BlzGetLocalClientWidth() end

---@return integer
function BlzGetLocalClientHeight() end

---@return boolean
function BlzIsLocalClientActive() end

---@return unit
function BlzGetMouseFocusUnit() end

---@param texFile string
---@return boolean
function BlzChangeMinimapTerrainTex(texFile) end

---@return string
function BlzGetLocale() end

---@param whichEffect effect
---@return number
function BlzGetSpecialEffectScale(whichEffect) end

---@param whichEffect effect
---@param x number
---@param y number
---@param z number
function BlzSetSpecialEffectMatrixScale(whichEffect, x, y, z) end

---@param whichEffect effect
function BlzResetSpecialEffectMatrix(whichEffect) end

---@param whichUnit unit
---@param abilId integer
---@return ability
function BlzGetUnitAbility(whichUnit, abilId) end

---@param whichUnit unit
---@param index integer
---@return ability
function BlzGetUnitAbilityByIndex(whichUnit, index) end

---@param whichAbility ability
---@return integer
function BlzGetAbilityId(whichAbility) end

---@param whichPlayer player
---@param recipient integer
---@param message string
function BlzDisplayChatMessage(whichPlayer, recipient, message) end

---@param whichUnit unit
---@param flag boolean
function BlzPauseUnitEx(whichUnit, flag) end

---@param value integer
---@return string
function BlzFourCC2S(value) end

---@param value string
---@return integer
function BlzS2FourCC(value) end

---@param whichUnit unit
---@param facingAngle number
function BlzSetUnitFacingEx(whichUnit, facingAngle) end

---@param abilityId integer
---@param order string
---@return commandbuttoneffect
function CreateCommandButtonEffect(abilityId, order) end

---@param whichUprgade integer
---@return commandbuttoneffect
function CreateUpgradeCommandButtonEffect(whichUprgade) end

---@param abilityId integer
---@return commandbuttoneffect
function CreateLearnCommandButtonEffect(abilityId) end

---@param whichEffect commandbuttoneffect
function DestroyCommandButtonEffect(whichEffect) end

---@param x integer
---@param y integer
---@return integer
function BlzBitOr(x, y) end

---@param x integer
---@param y integer
---@return integer
function BlzBitAnd(x, y) end

---@param x integer
---@param y integer
---@return integer
function BlzBitXor(x, y) end

---@param whichAbility ability
---@param whichField abilitybooleanfield
---@return boolean
function BlzGetAbilityBooleanField(whichAbility, whichField) end

---@param whichAbility ability
---@param whichField abilityintegerfield
---@return integer
function BlzGetAbilityIntegerField(whichAbility, whichField) end

---@param whichAbility ability
---@param whichField abilityrealfield
---@return number
function BlzGetAbilityRealField(whichAbility, whichField) end

---@param whichAbility ability
---@param whichField abilitystringfield
---@return string
function BlzGetAbilityStringField(whichAbility, whichField) end

---@param whichAbility ability
---@param whichField abilitybooleanlevelfield
---@param level integer
---@return boolean
function BlzGetAbilityBooleanLevelField(whichAbility, whichField, level) end

---@param whichAbility ability
---@param whichField abilityintegerlevelfield
---@param level integer
---@return integer
function BlzGetAbilityIntegerLevelField(whichAbility, whichField, level) end

---@param whichAbility ability
---@param whichField abilityreallevelfield
---@param level integer
---@return number
function BlzGetAbilityRealLevelField(whichAbility, whichField, level) end

---@param whichAbility ability
---@param whichField abilitystringlevelfield
---@param level integer
---@return string
function BlzGetAbilityStringLevelField(whichAbility, whichField, level) end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param index integer
---@return boolean
function BlzGetAbilityBooleanLevelArrayField(whichAbility, whichField, level, index) end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param index integer
---@return integer
function BlzGetAbilityIntegerLevelArrayField(whichAbility, whichField, level, index) end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param index integer
---@return number
function BlzGetAbilityRealLevelArrayField(whichAbility, whichField, level, index) end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param index integer
---@return string
function BlzGetAbilityStringLevelArrayField(whichAbility, whichField, level, index) end

---@param whichAbility ability
---@param whichField abilitybooleanfield
---@param value boolean
---@return boolean
function BlzSetAbilityBooleanField(whichAbility, whichField, value) end

---@param whichAbility ability
---@param whichField abilityintegerfield
---@param value integer
---@return boolean
function BlzSetAbilityIntegerField(whichAbility, whichField, value) end

---@param whichAbility ability
---@param whichField abilityrealfield
---@param value number
---@return boolean
function BlzSetAbilityRealField(whichAbility, whichField, value) end

---@param whichAbility ability
---@param whichField abilitystringfield
---@param value string
---@return boolean
function BlzSetAbilityStringField(whichAbility, whichField, value) end

---@param whichAbility ability
---@param whichField abilitybooleanlevelfield
---@param level integer
---@param value boolean
---@return boolean
function BlzSetAbilityBooleanLevelField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityintegerlevelfield
---@param level integer
---@param value integer
---@return boolean
function BlzSetAbilityIntegerLevelField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityreallevelfield
---@param level integer
---@param value number
---@return boolean
function BlzSetAbilityRealLevelField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilitystringlevelfield
---@param level integer
---@param value string
---@return boolean
function BlzSetAbilityStringLevelField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param index integer
---@param value boolean
---@return boolean
function BlzSetAbilityBooleanLevelArrayField(whichAbility, whichField, level, index, value) end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param index integer
---@param value integer
---@return boolean
function BlzSetAbilityIntegerLevelArrayField(whichAbility, whichField, level, index, value) end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param index integer
---@param value number
---@return boolean
function BlzSetAbilityRealLevelArrayField(whichAbility, whichField, level, index, value) end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param index integer
---@param value string
---@return boolean
function BlzSetAbilityStringLevelArrayField(whichAbility, whichField, level, index, value) end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param value boolean
---@return boolean
function BlzAddAbilityBooleanLevelArrayField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param value integer
---@return boolean
function BlzAddAbilityIntegerLevelArrayField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param value number
---@return boolean
function BlzAddAbilityRealLevelArrayField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param value string
---@return boolean
function BlzAddAbilityStringLevelArrayField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param value boolean
---@return boolean
function BlzRemoveAbilityBooleanLevelArrayField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param value integer
---@return boolean
function BlzRemoveAbilityIntegerLevelArrayField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param value number
---@return boolean
function BlzRemoveAbilityRealLevelArrayField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param value string
---@return boolean
function BlzRemoveAbilityStringLevelArrayField(whichAbility, whichField, level, value) end

---@param whichItem item
---@param index integer
---@return ability
function BlzGetItemAbilityByIndex(whichItem, index) end

---@param whichItem item
---@param abilCode integer
---@return ability
function BlzGetItemAbility(whichItem, abilCode) end

---@param whichItem item
---@param abilCode integer
---@return boolean
function BlzItemAddAbility(whichItem, abilCode) end

---@param whichItem item
---@param whichField itembooleanfield
---@return boolean
function BlzGetItemBooleanField(whichItem, whichField) end

---@param whichItem item
---@param whichField itemintegerfield
---@return integer
function BlzGetItemIntegerField(whichItem, whichField) end

---@param whichItem item
---@param whichField itemrealfield
---@return number
function BlzGetItemRealField(whichItem, whichField) end

---@param whichItem item
---@param whichField itemstringfield
---@return string
function BlzGetItemStringField(whichItem, whichField) end

---@param whichItem item
---@param whichField itembooleanfield
---@param value boolean
---@return boolean
function BlzSetItemBooleanField(whichItem, whichField, value) end

---@param whichItem item
---@param whichField itemintegerfield
---@param value integer
---@return boolean
function BlzSetItemIntegerField(whichItem, whichField, value) end

---@param whichItem item
---@param whichField itemrealfield
---@param value number
---@return boolean
function BlzSetItemRealField(whichItem, whichField, value) end

---@param whichItem item
---@param whichField itemstringfield
---@param value string
---@return boolean
function BlzSetItemStringField(whichItem, whichField, value) end

---@param whichItem item
---@param abilCode integer
---@return boolean
function BlzItemRemoveAbility(whichItem, abilCode) end

---@param whichUnit unit
---@param whichField unitbooleanfield
---@return boolean
function BlzGetUnitBooleanField(whichUnit, whichField) end

---@param whichUnit unit
---@param whichField unitintegerfield
---@return integer
function BlzGetUnitIntegerField(whichUnit, whichField) end

---@param whichUnit unit
---@param whichField unitrealfield
---@return number
function BlzGetUnitRealField(whichUnit, whichField) end

---@param whichUnit unit
---@param whichField unitstringfield
---@return string
function BlzGetUnitStringField(whichUnit, whichField) end

---@param whichUnit unit
---@param whichField unitbooleanfield
---@param value boolean
---@return boolean
function BlzSetUnitBooleanField(whichUnit, whichField, value) end

---@param whichUnit unit
---@param whichField unitintegerfield
---@param value integer
---@return boolean
function BlzSetUnitIntegerField(whichUnit, whichField, value) end

---@param whichUnit unit
---@param whichField unitrealfield
---@param value number
---@return boolean
function BlzSetUnitRealField(whichUnit, whichField, value) end

---@param whichUnit unit
---@param whichField unitstringfield
---@param value string
---@return boolean
function BlzSetUnitStringField(whichUnit, whichField, value) end

---@param whichUnit unit
---@param whichField unitweaponbooleanfield
---@param index integer
---@return boolean
function BlzGetUnitWeaponBooleanField(whichUnit, whichField, index) end

---@param whichUnit unit
---@param whichField unitweaponintegerfield
---@param index integer
---@return integer
function BlzGetUnitWeaponIntegerField(whichUnit, whichField, index) end

---@param whichUnit unit
---@param whichField unitweaponrealfield
---@param index integer
---@return number
function BlzGetUnitWeaponRealField(whichUnit, whichField, index) end

---@param whichUnit unit
---@param whichField unitweaponstringfield
---@param index integer
---@return string
function BlzGetUnitWeaponStringField(whichUnit, whichField, index) end

---@param whichUnit unit
---@param whichField unitweaponbooleanfield
---@param index integer
---@param value boolean
---@return boolean
function BlzSetUnitWeaponBooleanField(whichUnit, whichField, index, value) end

---@param whichUnit unit
---@param whichField unitweaponintegerfield
---@param index integer
---@param value integer
---@return boolean
function BlzSetUnitWeaponIntegerField(whichUnit, whichField, index, value) end

---@param whichUnit unit
---@param whichField unitweaponrealfield
---@param index integer
---@param value number
---@return boolean
function BlzSetUnitWeaponRealField(whichUnit, whichField, index, value) end

---@param whichUnit unit
---@param whichField unitweaponstringfield
---@param index integer
---@param value string
---@return boolean
function BlzSetUnitWeaponStringField(whichUnit, whichField, index, value) end

---@param whichUnit unit
---@return integer
function BlzGetUnitSkin(whichUnit) end

---@param whichItem item
---@return integer
function BlzGetItemSkin(whichItem) end

---@param whichDestructable destructable
---@return integer
function BlzGetDestructableSkin(whichDestructable) end

---@param whichUnit unit
---@param skinId integer
function BlzSetUnitSkin(whichUnit, skinId) end

---@param whichItem item
---@param skinId integer
function BlzSetItemSkin(whichItem, skinId) end

---@param whichDestructable destructable
---@param skinId integer
function BlzSetDestructableSkin(whichDestructable, skinId) end

---@param itemid integer
---@param x number
---@param y number
---@param skinId integer
---@return item
function BlzCreateItemWithSkin(itemid, x, y, skinId) end

---@param id player
---@param unitid integer
---@param x number
---@param y number
---@param face number
---@param skinId integer
---@return unit
function BlzCreateUnitWithSkin(id, unitid, x, y, face, skinId) end

---@param objectid integer
---@param x number
---@param y number
---@param face number
---@param scale number
---@param variation integer
---@param skinId integer
---@return destructable
function BlzCreateDestructableWithSkin(objectid, x, y, face, scale, variation, skinId) end

---@param objectid integer
---@param x number
---@param y number
---@param z number
---@param face number
---@param scale number
---@param variation integer
---@param skinId integer
---@return destructable
function BlzCreateDestructableZWithSkin(objectid, x, y, z, face, scale, variation, skinId) end

---@param objectid integer
---@param x number
---@param y number
---@param face number
---@param scale number
---@param variation integer
---@param skinId integer
---@return destructable
function BlzCreateDeadDestructableWithSkin(objectid, x, y, face, scale, variation, skinId) end

---@param objectid integer
---@param x number
---@param y number
---@param z number
---@param face number
---@param scale number
---@param variation integer
---@param skinId integer
---@return destructable
function BlzCreateDeadDestructableZWithSkin(objectid, x, y, z, face, scale, variation, skinId) end

---@param whichPlayer player
---@return integer
function BlzGetPlayerTownHallCount(whichPlayer) end

---@param whichUnit unit
---@param order integer
---@return boolean
function BlzQueueImmediateOrderById(whichUnit, order) end

---@param whichUnit unit
---@param order integer
---@param x number
---@param y number
---@return boolean
function BlzQueuePointOrderById(whichUnit, order, x, y) end

---@param whichUnit unit
---@param order integer
---@param targetWidget widget
---@return boolean
function BlzQueueTargetOrderById(whichUnit, order, targetWidget) end

---@param whichUnit unit
---@param order integer
---@param x number
---@param y number
---@param instantTargetWidget widget
---@return boolean
function BlzQueueInstantPointOrderById(whichUnit, order, x, y, instantTargetWidget) end

---@param whichUnit unit
---@param order integer
---@param targetWidget widget
---@param instantTargetWidget widget
---@return boolean
function BlzQueueInstantTargetOrderById(whichUnit, order, targetWidget, instantTargetWidget) end

---@param whichPeon unit
---@param unitId integer
---@param x number
---@param y number
---@return boolean
function BlzQueueBuildOrderById(whichPeon, unitId, x, y) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitId integer
---@return boolean
function BlzQueueNeutralImmediateOrderById(forWhichPlayer, neutralStructure, unitId) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitId integer
---@param x number
---@param y number
---@return boolean
function BlzQueueNeutralPointOrderById(forWhichPlayer, neutralStructure, unitId, x, y) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitId integer
---@param target widget
---@return boolean
function BlzQueueNeutralTargetOrderById(forWhichPlayer, neutralStructure, unitId, target) end

---@param whichUnit unit
---@return integer
function BlzGetUnitOrderCount(whichUnit) end

---@param whichUnit unit
---@param onlyQueued boolean
function BlzUnitClearOrders(whichUnit, onlyQueued) end

---@param whichUnit unit
---@param clearQueue boolean
function BlzUnitForceStopOrder(whichUnit, clearQueue) end

---@diagnostic disable

---@param msg string
function BJDebugMsg(msg) end

---@param a number
---@param b number
---@return number
function RMinBJ(a, b) end

---@param a number
---@param b number
---@return number
function RMaxBJ(a, b) end

---@param a number
---@return number
function RAbsBJ(a) end

---@param a number
---@return number
function RSignBJ(a) end

---@param a integer
---@param b integer
---@return integer
function IMinBJ(a, b) end

---@param a integer
---@param b integer
---@return integer
function IMaxBJ(a, b) end

---@param a integer
---@return integer
function IAbsBJ(a) end

---@param a integer
---@return integer
function ISignBJ(a) end

---@param degrees number
---@return number
function SinBJ(degrees) end

---@param degrees number
---@return number
function CosBJ(degrees) end

---@param degrees number
---@return number
function TanBJ(degrees) end

---@param degrees number
---@return number
function AsinBJ(degrees) end

---@param degrees number
---@return number
function AcosBJ(degrees) end

---@param degrees number
---@return number
function AtanBJ(degrees) end

---@param y number
---@param x number
---@return number
function Atan2BJ(y, x) end

---@param locA location
---@param locB location
---@return number
function AngleBetweenPoints(locA, locB) end

---@param locA location
---@param locB location
---@return number
function DistanceBetweenPoints(locA, locB) end

---@param source location
---@param dist number
---@param angle number
---@return location
function PolarProjectionBJ(source, dist, angle) end

---@return number
function GetRandomDirectionDeg() end

---@return number
function GetRandomPercentageBJ() end

---@param whichRect rect
---@return location
function GetRandomLocInRect(whichRect) end

---@param dividend integer
---@param divisor integer
---@return integer
function ModuloInteger(dividend, divisor) end

---@param dividend number
---@param divisor number
---@return number
function ModuloReal(dividend, divisor) end

---@param loc location
---@param dx number
---@param dy number
---@return location
function OffsetLocation(loc, dx, dy) end

---@param r rect
---@param dx number
---@param dy number
---@return rect
function OffsetRectBJ(r, dx, dy) end

---@param center location
---@param width number
---@param height number
---@return rect
function RectFromCenterSizeBJ(center, width, height) end

---@param r rect
---@param x number
---@param y number
---@return boolean
function RectContainsCoords(r, x, y) end

---@param r rect
---@param loc location
---@return boolean
function RectContainsLoc(r, loc) end

---@param r rect
---@param whichUnit unit
---@return boolean
function RectContainsUnit(r, whichUnit) end

---@param whichItem item
---@param r rect
---@return boolean
function RectContainsItem(whichItem, r) end

---@param trig trigger
function ConditionalTriggerExecute(trig) end

---@param trig trigger
---@param checkConditions boolean
---@return boolean
function TriggerExecuteBJ(trig, checkConditions) end

---@param trig trigger
---@param checkConditions boolean
---@return boolean
function PostTriggerExecuteBJ(trig, checkConditions) end

function QueuedTriggerCheck() end

---@param trig trigger
---@return integer
function QueuedTriggerGetIndex(trig) end

---@param trigIndex integer
---@return boolean
function QueuedTriggerRemoveByIndex(trigIndex) end

---@return boolean
function QueuedTriggerAttemptExec() end

---@param trig trigger
---@param checkConditions boolean
---@return boolean
function QueuedTriggerAddBJ(trig, checkConditions) end

---@param trig trigger
function QueuedTriggerRemoveBJ(trig) end

function QueuedTriggerDoneBJ() end

function QueuedTriggerClearBJ() end

function QueuedTriggerClearInactiveBJ() end

---@return integer
function QueuedTriggerCountBJ() end

---@return boolean
function IsTriggerQueueEmptyBJ() end

---@param trig trigger
---@return boolean
function IsTriggerQueuedBJ(trig) end

---@return integer
function GetForLoopIndexA() end

---@param newIndex integer
function SetForLoopIndexA(newIndex) end

---@return integer
function GetForLoopIndexB() end

---@param newIndex integer
function SetForLoopIndexB(newIndex) end

---@param duration number
function PolledWait(duration) end

---@param flag boolean
---@param valueA integer
---@param valueB integer
---@return integer
function IntegerTertiaryOp(flag, valueA, valueB) end

function DoNothing() end

---@param commentString string
function CommentString(commentString) end

---@param theString string
---@return string
function StringIdentity(theString) end

---@param valueA boolean
---@param valueB boolean
---@return boolean
function GetBooleanAnd(valueA, valueB) end

---@param valueA boolean
---@param valueB boolean
---@return boolean
function GetBooleanOr(valueA, valueB) end

---@param percentage number
---@param max integer
---@return integer
function PercentToInt(percentage, max) end

---@param percentage number
---@return integer
function PercentTo255(percentage) end

---@return number
function GetTimeOfDay() end

---@param whatTime number
function SetTimeOfDay(whatTime) end

---@param scalePercent number
function SetTimeOfDayScalePercentBJ(scalePercent) end

---@return number
function GetTimeOfDayScalePercentBJ() end

---@param soundName string
function PlaySound(soundName) end

---@param A location
---@param B location
---@return boolean
function CompareLocationsBJ(A, B) end

---@param A rect
---@param B rect
---@return boolean
function CompareRectsBJ(A, B) end

---@param center location
---@param radius number
---@return rect
function GetRectFromCircleBJ(center, radius) end

---@return camerasetup
function GetCurrentCameraSetup() end

---@param doPan boolean
---@param whichSetup camerasetup
---@param whichPlayer player
---@param duration number
function CameraSetupApplyForPlayer(doPan, whichSetup, whichPlayer, duration) end

---@param doPan boolean
---@param whichSetup camerasetup
---@param whichPlayer player
---@param forcedDuration number
---@param easeInDuration number
---@param easeOutDuration number
---@param smoothFactor number
function CameraSetupApplyForPlayerSmooth(doPan, whichSetup, whichPlayer, forcedDuration, easeInDuration, easeOutDuration, smoothFactor) end

---@param whichField camerafield
---@param whichSetup camerasetup
---@return number
function CameraSetupGetFieldSwap(whichField, whichSetup) end

---@param whichPlayer player
---@param whichField camerafield
---@param value number
---@param duration number
function SetCameraFieldForPlayer(whichPlayer, whichField, value, duration) end

---@param whichPlayer player
---@param whichUnit unit
---@param xoffset number
---@param yoffset number
---@param inheritOrientation boolean
function SetCameraTargetControllerNoZForPlayer(whichPlayer, whichUnit, xoffset, yoffset, inheritOrientation) end

---@param whichPlayer player
---@param x number
---@param y number
function SetCameraPositionForPlayer(whichPlayer, x, y) end

---@param whichPlayer player
---@param loc location
function SetCameraPositionLocForPlayer(whichPlayer, loc) end

---@param degrees number
---@param loc location
---@param whichPlayer player
---@param duration number
function RotateCameraAroundLocBJ(degrees, loc, whichPlayer, duration) end

---@param whichPlayer player
---@param x number
---@param y number
function PanCameraToForPlayer(whichPlayer, x, y) end

---@param whichPlayer player
---@param loc location
function PanCameraToLocForPlayer(whichPlayer, loc) end

---@param whichPlayer player
---@param x number
---@param y number
---@param duration number
function PanCameraToTimedForPlayer(whichPlayer, x, y, duration) end

---@param whichPlayer player
---@param loc location
---@param duration number
function PanCameraToTimedLocForPlayer(whichPlayer, loc, duration) end

---@param whichPlayer player
---@param loc location
---@param zOffset number
---@param duration number
function PanCameraToTimedLocWithZForPlayer(whichPlayer, loc, zOffset, duration) end

---@param whichPlayer player
---@param loc location
---@param duration number
function SmartCameraPanBJ(whichPlayer, loc, duration) end

---@param whichPlayer player
---@param cameraModelFile string
function SetCinematicCameraForPlayer(whichPlayer, cameraModelFile) end

---@param whichPlayer player
---@param duration number
function ResetToGameCameraForPlayer(whichPlayer, duration) end

---@param whichPlayer player
---@param magnitude number
---@param velocity number
function CameraSetSourceNoiseForPlayer(whichPlayer, magnitude, velocity) end

---@param whichPlayer player
---@param magnitude number
---@param velocity number
function CameraSetTargetNoiseForPlayer(whichPlayer, magnitude, velocity) end

---@param whichPlayer player
---@param magnitude number
function CameraSetEQNoiseForPlayer(whichPlayer, magnitude) end

---@param whichPlayer player
function CameraClearNoiseForPlayer(whichPlayer) end

---@return rect
function GetCurrentCameraBoundsMapRectBJ() end

---@return rect
function GetCameraBoundsMapRect() end

---@return rect
function GetPlayableMapRect() end

---@return rect
function GetEntireMapRect() end

---@param r rect
function SetCameraBoundsToRect(r) end

---@param whichPlayer player
---@param r rect
function SetCameraBoundsToRectForPlayerBJ(whichPlayer, r) end

---@param adjustMethod integer
---@param dxWest number
---@param dxEast number
---@param dyNorth number
---@param dySouth number
function AdjustCameraBoundsBJ(adjustMethod, dxWest, dxEast, dyNorth, dySouth) end

---@param adjustMethod integer
---@param whichPlayer player
---@param dxWest number
---@param dxEast number
---@param dyNorth number
---@param dySouth number
function AdjustCameraBoundsForPlayerBJ(adjustMethod, whichPlayer, dxWest, dxEast, dyNorth, dySouth) end

---@param whichPlayer player
---@param x number
---@param y number
function SetCameraQuickPositionForPlayer(whichPlayer, x, y) end

---@param whichPlayer player
---@param loc location
function SetCameraQuickPositionLocForPlayer(whichPlayer, loc) end

---@param loc location
function SetCameraQuickPositionLoc(loc) end

---@param whichPlayer player
function StopCameraForPlayerBJ(whichPlayer) end

---@param whichPlayer player
---@param whichUnit unit
---@param xoffset number
---@param yoffset number
function SetCameraOrientControllerForPlayerBJ(whichPlayer, whichUnit, xoffset, yoffset) end

---@param factor number
function CameraSetSmoothingFactorBJ(factor) end

function CameraResetSmoothingFactorBJ() end

---@param toForce force
---@param message string
function DisplayTextToForce(toForce, message) end

---@param toForce force
---@param duration number
---@param message string
function DisplayTimedTextToForce(toForce, duration, message) end

---@param toForce force
function ClearTextMessagesBJ(toForce) end

---@param source string
---@param start integer
---@param end integer
---@return string
function SubStringBJ(source, strStart, strEnd) end

---@param h handle
---@return integer
function GetHandleIdBJ(h) end

---@param s string
---@return integer
function StringHashBJ(s) end

---@param trig trigger
---@param timeout number
---@return event
function TriggerRegisterTimerEventPeriodic(trig, timeout) end

---@param trig trigger
---@param timeout number
---@return event
function TriggerRegisterTimerEventSingle(trig, timeout) end

---@param trig trigger
---@param t timer
---@return event
function TriggerRegisterTimerExpireEventBJ(trig, t) end

---@param trig trigger
---@param whichPlayer player
---@param whichEvent playerunitevent
---@return event
function TriggerRegisterPlayerUnitEventSimple(trig, whichPlayer, whichEvent) end

---@param trig trigger
---@param whichEvent playerunitevent
function TriggerRegisterAnyUnitEventBJ(trig, whichEvent) end

---@param trig trigger
---@param whichPlayer player
---@param selected boolean
---@return event
function TriggerRegisterPlayerSelectionEventBJ(trig, whichPlayer, selected) end

---@param trig trigger
---@param whichPlayer player
---@param keType integer
---@param keKey integer
---@return event
function TriggerRegisterPlayerKeyEventBJ(trig, whichPlayer, keType, keKey) end

---@param trig trigger
---@param whichPlayer player
---@param meType integer
---@return event
function TriggerRegisterPlayerMouseEventBJ(trig, whichPlayer, meType) end

---@param trig trigger
---@param whichPlayer player
---@return event
function TriggerRegisterPlayerEventVictory(trig, whichPlayer) end

---@param trig trigger
---@param whichPlayer player
---@return event
function TriggerRegisterPlayerEventDefeat(trig, whichPlayer) end

---@param trig trigger
---@param whichPlayer player
---@return event
function TriggerRegisterPlayerEventLeave(trig, whichPlayer) end

---@param trig trigger
---@param whichPlayer player
---@return event
function TriggerRegisterPlayerEventAllianceChanged(trig, whichPlayer) end

---@param trig trigger
---@param whichPlayer player
---@return event
function TriggerRegisterPlayerEventEndCinematic(trig, whichPlayer) end

---@param trig trigger
---@param opcode limitop
---@param limitval number
---@return event
function TriggerRegisterGameStateEventTimeOfDay(trig, opcode, limitval) end

---@param trig trigger
---@param whichRegion region
---@return event
function TriggerRegisterEnterRegionSimple(trig, whichRegion) end

---@param trig trigger
---@param whichRegion region
---@return event
function TriggerRegisterLeaveRegionSimple(trig, whichRegion) end

---@param trig trigger
---@param r rect
---@return event
function TriggerRegisterEnterRectSimple(trig, r) end

---@param trig trigger
---@param r rect
---@return event
function TriggerRegisterLeaveRectSimple(trig, r) end

---@param trig trigger
---@param whichUnit unit
---@param condition boolexpr
---@param range number
---@return event
function TriggerRegisterDistanceBetweenUnits(trig, whichUnit, condition, range) end

---@param trig trigger
---@param range number
---@param whichUnit unit
---@return event
function TriggerRegisterUnitInRangeSimple(trig, range, whichUnit) end

---@param trig trigger
---@param whichUnit unit
---@param opcode limitop
---@param limitval number
---@return event
function TriggerRegisterUnitLifeEvent(trig, whichUnit, opcode, limitval) end

---@param trig trigger
---@param whichUnit unit
---@param opcode limitop
---@param limitval number
---@return event
function TriggerRegisterUnitManaEvent(trig, whichUnit, opcode, limitval) end

---@param trig trigger
---@param whichDialog dialog
---@return event
function TriggerRegisterDialogEventBJ(trig, whichDialog) end

---@param trig trigger
---@return event
function TriggerRegisterShowSkillEventBJ(trig) end

---@param trig trigger
---@return event
function TriggerRegisterBuildSubmenuEventBJ(trig) end

---@param trig trigger
---@param unitId integer
---@return event
function TriggerRegisterBuildCommandEventBJ(trig, unitId) end

---@param trig trigger
---@param unitId integer
---@return event
function TriggerRegisterTrainCommandEventBJ(trig, unitId) end

---@param trig trigger
---@param techId integer
---@return event
function TriggerRegisterUpgradeCommandEventBJ(trig, techId) end

---@param trig trigger
---@param order string
---@return event
function TriggerRegisterCommonCommandEventBJ(trig, order) end

---@param trig trigger
---@return event
function TriggerRegisterGameLoadedEventBJ(trig) end

---@param trig trigger
---@return event
function TriggerRegisterGameSavedEventBJ(trig) end

function RegisterDestDeathInRegionEnum() end

---@param trig trigger
---@param r rect
function TriggerRegisterDestDeathInRegionEvent(trig, r) end

---@param where rect
---@param effectID integer
---@return weathereffect
function AddWeatherEffectSaveLast(where, effectID) end

---@return weathereffect
function GetLastCreatedWeatherEffect() end

---@param whichWeatherEffect weathereffect
function RemoveWeatherEffectBJ(whichWeatherEffect) end

---@param duration number
---@param permanent boolean
---@param where location
---@param radius number
---@param depth number
---@return terraindeformation
function TerrainDeformationCraterBJ(duration, permanent, where, radius, depth) end

---@param duration number
---@param limitNeg boolean
---@param where location
---@param startRadius number
---@param endRadius number
---@param depth number
---@param wavePeriod number
---@param waveWidth number
---@return terraindeformation
function TerrainDeformationRippleBJ(duration, limitNeg, where, startRadius, endRadius, depth, wavePeriod, waveWidth) end

---@param duration number
---@param source location
---@param target location
---@param radius number
---@param depth number
---@param trailDelay number
---@return terraindeformation
function TerrainDeformationWaveBJ(duration, source, target, radius, depth, trailDelay) end

---@param duration number
---@param where location
---@param radius number
---@param minDelta number
---@param maxDelta number
---@param updateInterval number
---@return terraindeformation
function TerrainDeformationRandomBJ(duration, where, radius, minDelta, maxDelta, updateInterval) end

---@param deformation terraindeformation
---@param duration number
function TerrainDeformationStopBJ(deformation, duration) end

---@return terraindeformation
function GetLastCreatedTerrainDeformation() end

---@param codeName string
---@param where1 location
---@param where2 location
---@return lightning
function AddLightningLoc(codeName, where1, where2) end

---@param whichBolt lightning
---@return boolean
function DestroyLightningBJ(whichBolt) end

---@param whichBolt lightning
---@param where1 location
---@param where2 location
---@return boolean
function MoveLightningLoc(whichBolt, where1, where2) end

---@param whichBolt lightning
---@return number
function GetLightningColorABJ(whichBolt) end

---@param whichBolt lightning
---@return number
function GetLightningColorRBJ(whichBolt) end

---@param whichBolt lightning
---@return number
function GetLightningColorGBJ(whichBolt) end

---@param whichBolt lightning
---@return number
function GetLightningColorBBJ(whichBolt) end

---@param whichBolt lightning
---@param r number
---@param g number
---@param b number
---@param a number
---@return boolean
function SetLightningColorBJ(whichBolt, r, g, b, a) end

---@return lightning
function GetLastCreatedLightningBJ() end

---@param abilcode integer
---@param t effecttype
---@param index integer
---@return string
function GetAbilityEffectBJ(abilcode, t, index) end

---@param abilcode integer
---@param t soundtype
---@return string
function GetAbilitySoundBJ(abilcode, t) end

---@param where location
---@return integer
function GetTerrainCliffLevelBJ(where) end

---@param where location
---@return integer
function GetTerrainTypeBJ(where) end

---@param where location
---@return integer
function GetTerrainVarianceBJ(where) end

---@param where location
---@param terrainType integer
---@param variation integer
---@param area integer
---@param shape integer
function SetTerrainTypeBJ(where, terrainType, variation, area, shape) end

---@param where location
---@param t pathingtype
---@return boolean
function IsTerrainPathableBJ(where, t) end

---@param where location
---@param t pathingtype
---@param flag boolean
function SetTerrainPathableBJ(where, t, flag) end

---@param red number
---@param green number
---@param blue number
---@param transparency number
function SetWaterBaseColorBJ(red, green, blue, transparency) end

---@param whichPlayer player
---@param whichFogState fogstate
---@param r rect
---@param afterUnits boolean
---@return fogmodifier
function CreateFogModifierRectSimple(whichPlayer, whichFogState, r, afterUnits) end

---@param whichPlayer player
---@param whichFogState fogstate
---@param center location
---@param radius number
---@param afterUnits boolean
---@return fogmodifier
function CreateFogModifierRadiusLocSimple(whichPlayer, whichFogState, center, radius, afterUnits) end

---@param enabled boolean
---@param whichPlayer player
---@param whichFogState fogstate
---@param r rect
---@return fogmodifier
function CreateFogModifierRectBJ(enabled, whichPlayer, whichFogState, r) end

---@param enabled boolean
---@param whichPlayer player
---@param whichFogState fogstate
---@param center location
---@param radius number
---@return fogmodifier
function CreateFogModifierRadiusLocBJ(enabled, whichPlayer, whichFogState, center, radius) end

---@return fogmodifier
function GetLastCreatedFogModifier() end

function FogEnableOn() end

function FogEnableOff() end

function FogMaskEnableOn() end

function FogMaskEnableOff() end

---@param flag boolean
function UseTimeOfDayBJ(flag) end

---@param style integer
---@param zstart number
---@param zend number
---@param density number
---@param red number
---@param green number
---@param blue number
function SetTerrainFogExBJ(style, zstart, zend, density, red, green, blue) end

function ResetTerrainFogBJ() end

---@param animName string
---@param doodadID integer
---@param radius number
---@param center location
function SetDoodadAnimationBJ(animName, doodadID, radius, center) end

---@param animName string
---@param doodadID integer
---@param r rect
function SetDoodadAnimationRectBJ(animName, doodadID, r) end

---@param add boolean
---@param animProperties string
---@param whichUnit unit
function AddUnitAnimationPropertiesBJ(add, animProperties, whichUnit) end

---@param file string
---@param size number
---@param where location
---@param zOffset number
---@param imageType integer
---@return image
function CreateImageBJ(file, size, where, zOffset, imageType) end

---@param flag boolean
---@param whichImage image
function ShowImageBJ(flag, whichImage) end

---@param whichImage image
---@param where location
---@param zOffset number
function SetImagePositionBJ(whichImage, where, zOffset) end

---@param whichImage image
---@param red number
---@param green number
---@param blue number
---@param alpha number
function SetImageColorBJ(whichImage, red, green, blue, alpha) end

---@return image
function GetLastCreatedImage() end

---@param where location
---@param name string
---@param red number
---@param green number
---@param blue number
---@param alpha number
---@param forcePaused boolean
---@param noBirthTime boolean
---@return ubersplat
function CreateUbersplatBJ(where, name, red, green, blue, alpha, forcePaused, noBirthTime) end

---@param flag boolean
---@param whichSplat ubersplat
function ShowUbersplatBJ(flag, whichSplat) end

---@return ubersplat
function GetLastCreatedUbersplat() end

---@return minimapicon
function GetLastCreatedMinimapIcon() end

---@param whichUnit unit
---@param red integer
---@param green integer
---@param blue integer
---@param pingPath string
---@param fogVisibility fogstate
---@return minimapicon
function CreateMinimapIconOnUnitBJ(whichUnit, red, green, blue, pingPath, fogVisibility) end

---@param where location
---@param red integer
---@param green integer
---@param blue integer
---@param pingPath string
---@param fogVisibility fogstate
---@return minimapicon
function CreateMinimapIconAtLocBJ(where, red, green, blue, pingPath, fogVisibility) end

---@param x number
---@param y number
---@param red integer
---@param green integer
---@param blue integer
---@param pingPath string
---@param fogVisibility fogstate
---@return minimapicon
function CreateMinimapIconBJ(x, y, red, green, blue, pingPath, fogVisibility) end

---@param whichUnit unit
---@param style integer
function CampaignMinimapIconUnitBJ(whichUnit, style) end

---@param where location
---@param style integer
function CampaignMinimapIconLocBJ(where, style) end

---@param soundHandle sound
function PlaySoundBJ(soundHandle) end

---@param soundHandle sound
---@param fadeOut boolean
function StopSoundBJ(soundHandle, fadeOut) end

---@param soundHandle sound
---@param volumePercent number
function SetSoundVolumeBJ(soundHandle, volumePercent) end

---@param newOffset number
---@param soundHandle sound
function SetSoundOffsetBJ(newOffset, soundHandle) end

---@param soundHandle sound
---@param cutoff number
function SetSoundDistanceCutoffBJ(soundHandle, cutoff) end

---@param soundHandle sound
---@param pitch number
function SetSoundPitchBJ(soundHandle, pitch) end

---@param soundHandle sound
---@param loc location
---@param z number
function SetSoundPositionLocBJ(soundHandle, loc, z) end

---@param soundHandle sound
---@param whichUnit unit
function AttachSoundToUnitBJ(soundHandle, whichUnit) end

---@param soundHandle sound
---@param inside number
---@param outside number
---@param outsideVolumePercent number
function SetSoundConeAnglesBJ(soundHandle, inside, outside, outsideVolumePercent) end

---@param soundHandle sound
function KillSoundWhenDoneBJ(soundHandle) end

---@param soundHandle sound
---@param volumePercent number
---@param loc location
---@param z number
function PlaySoundAtPointBJ(soundHandle, volumePercent, loc, z) end

---@param soundHandle sound
---@param volumePercent number
---@param whichUnit unit
function PlaySoundOnUnitBJ(soundHandle, volumePercent, whichUnit) end

---@param soundHandle sound
---@param volumePercent number
---@param startingOffset number
function PlaySoundFromOffsetBJ(soundHandle, volumePercent, startingOffset) end

---@param musicFileName string
function PlayMusicBJ(musicFileName) end

---@param musicFileName string
---@param startingOffset number
---@param fadeInTime number
function PlayMusicExBJ(musicFileName, startingOffset, fadeInTime) end

---@param newOffset number
function SetMusicOffsetBJ(newOffset) end

---@param musicName string
function PlayThematicMusicBJ(musicName) end

---@param musicName string
---@param startingOffset number
function PlayThematicMusicExBJ(musicName, startingOffset) end

---@param newOffset number
function SetThematicMusicOffsetBJ(newOffset) end

function EndThematicMusicBJ() end

---@param fadeOut boolean
function StopMusicBJ(fadeOut) end

function ResumeMusicBJ() end

---@param volumePercent number
function SetMusicVolumeBJ(volumePercent) end

---@param volumePercent number
function SetThematicMusicVolumeBJ(volumePercent) end

---@param soundHandle sound
---@return number
function GetSoundDurationBJ(soundHandle) end

---@param musicFileName string
---@return number
function GetSoundFileDurationBJ(musicFileName) end

---@return sound
function GetLastPlayedSound() end

---@return string
function GetLastPlayedMusic() end

---@param vgroup volumegroup
---@param percent number
function VolumeGroupSetVolumeBJ(vgroup, percent) end

function SetCineModeVolumeGroupsImmediateBJ() end

function SetCineModeVolumeGroupsBJ() end

function SetSpeechVolumeGroupsImmediateBJ() end

function SetSpeechVolumeGroupsBJ() end

function VolumeGroupResetImmediateBJ() end

function VolumeGroupResetBJ() end

---@param soundHandle sound
---@return boolean
function GetSoundIsPlayingBJ(soundHandle) end

---@param soundHandle sound
---@param offset number
function WaitForSoundBJ(soundHandle, offset) end

---@param musicName string
---@param index integer
function SetMapMusicIndexedBJ(musicName, index) end

---@param musicName string
function SetMapMusicRandomBJ(musicName) end

function ClearMapMusicBJ() end

---@param add boolean
---@param soundHandle sound
---@param r rect
function SetStackedSoundBJ(add, soundHandle, r) end

---@param whichPlayer player
---@param soundHandle sound
function StartSoundForPlayerBJ(whichPlayer, soundHandle) end

---@param whichPlayer player
---@param vgroup volumegroup
---@param scale number
function VolumeGroupSetVolumeForPlayerBJ(whichPlayer, vgroup, scale) end

---@param flag boolean
function EnableDawnDusk(flag) end

---@return boolean
function IsDawnDuskEnabled() end

---@param inLabel string
function SetAmbientDaySound(inLabel) end

---@param inLabel string
function SetAmbientNightSound(inLabel) end

---@param where location
---@param modelName string
---@return effect
function AddSpecialEffectLocBJ(where, modelName) end

---@param attachPointName string
---@param targetWidget widget
---@param modelName string
---@return effect
function AddSpecialEffectTargetUnitBJ(attachPointName, targetWidget, modelName) end

---@param attachPointName string
---@param targetWidget widget
---@param modelName string
---@return effect
function AddSpecialEffectTargetDestructableBJ(attachPointName, targetWidget, modelName) end

---@param attachPointName string
---@param targetWidget widget
---@param modelName string
---@return effect
function AddSpecialEffectTargetItemBJ(attachPointName, targetWidget, modelName) end

---@param whichEffect effect
function DestroyEffectBJ(whichEffect) end

---@return effect
function GetLastCreatedEffectBJ() end

---@param abilityId integer
---@param order string
---@return commandbuttoneffect
function CreateCommandButtonEffectBJ(abilityId, order) end

---@param unitId integer
---@return commandbuttoneffect
function CreateTrainCommandButtonEffectBJ(unitId) end

---@param techId integer
---@return commandbuttoneffect
function CreateUpgradeCommandButtonEffectBJ(techId) end

---@param order string
---@return commandbuttoneffect
function CreateCommonCommandButtonEffectBJ(order) end

---@param abilityId integer
---@return commandbuttoneffect
function CreateLearnCommandButtonEffectBJ(abilityId) end

---@param unitId integer
---@return commandbuttoneffect
function CreateBuildCommandButtonEffectBJ(unitId) end

---@return commandbuttoneffect
function GetLastCreatedCommandButtonEffectBJ() end

---@param whichItem item
---@return location
function GetItemLoc(whichItem) end

---@param whichWidget widget
---@return number
function GetItemLifeBJ(whichWidget) end

---@param whichWidget widget
---@param life number
function SetItemLifeBJ(whichWidget, life) end

---@param xpToAdd integer
---@param whichHero unit
---@param showEyeCandy boolean
function AddHeroXPSwapped(xpToAdd, whichHero, showEyeCandy) end

---@param whichHero unit
---@param newLevel integer
---@param showEyeCandy boolean
function SetHeroLevelBJ(whichHero, newLevel, showEyeCandy) end

---@param abilcode integer
---@param whichUnit unit
---@return integer
function DecUnitAbilityLevelSwapped(abilcode, whichUnit) end

---@param abilcode integer
---@param whichUnit unit
---@return integer
function IncUnitAbilityLevelSwapped(abilcode, whichUnit) end

---@param abilcode integer
---@param whichUnit unit
---@param level integer
---@return integer
function SetUnitAbilityLevelSwapped(abilcode, whichUnit, level) end

---@param abilcode integer
---@param whichUnit unit
---@return integer
function GetUnitAbilityLevelSwapped(abilcode, whichUnit) end

---@param whichUnit unit
---@param buffcode integer
---@return boolean
function UnitHasBuffBJ(whichUnit, buffcode) end

---@param buffcode integer
---@param whichUnit unit
---@return boolean
function UnitRemoveBuffBJ(buffcode, whichUnit) end

---@param whichItem item
---@param whichHero unit
---@return boolean
function UnitAddItemSwapped(whichItem, whichHero) end

---@param itemId integer
---@param whichHero unit
---@return item
function UnitAddItemByIdSwapped(itemId, whichHero) end

---@param whichItem item
---@param whichHero unit
function UnitRemoveItemSwapped(whichItem, whichHero) end

---@param itemSlot integer
---@param whichHero unit
---@return item
function UnitRemoveItemFromSlotSwapped(itemSlot, whichHero) end

---@param itemId integer
---@param loc location
---@return item
function CreateItemLoc(itemId, loc) end

---@return item
function GetLastCreatedItem() end

---@return item
function GetLastRemovedItem() end

---@param whichItem item
---@param loc location
function SetItemPositionLoc(whichItem, loc) end

---@return integer
function GetLearnedSkillBJ() end

---@param flag boolean
---@param whichHero unit
function SuspendHeroXPBJ(flag, whichHero) end

---@param whichPlayer player
---@param handicapPercent number
function SetPlayerHandicapDamageBJ(whichPlayer, handicapPercent) end

---@param whichPlayer player
---@return number
function GetPlayerHandicapDamageBJ(whichPlayer) end

---@param whichPlayer player
---@param handicapPercent number
function SetPlayerHandicapReviveTimeBJ(whichPlayer, handicapPercent) end

---@param whichPlayer player
---@return number
function GetPlayerHandicapReviveTimeBJ(whichPlayer) end

---@param whichPlayer player
---@param handicapPercent number
function SetPlayerHandicapXPBJ(whichPlayer, handicapPercent) end

---@param whichPlayer player
---@return number
function GetPlayerHandicapXPBJ(whichPlayer) end

---@param whichPlayer player
---@param handicapPercent number
function SetPlayerHandicapBJ(whichPlayer, handicapPercent) end

---@param whichPlayer player
---@return number
function GetPlayerHandicapBJ(whichPlayer) end

---@param whichStat integer
---@param whichHero unit
---@param includeBonuses boolean
---@return integer
function GetHeroStatBJ(whichStat, whichHero, includeBonuses) end

---@param whichHero unit
---@param whichStat integer
---@param value integer
function SetHeroStat(whichHero, whichStat, value) end

---@param whichStat integer
---@param whichHero unit
---@param modifyMethod integer
---@param value integer
function ModifyHeroStat(whichStat, whichHero, modifyMethod, value) end

---@param whichHero unit
---@param modifyMethod integer
---@param value integer
---@return boolean
function ModifyHeroSkillPoints(whichHero, modifyMethod, value) end

---@param whichUnit unit
---@param whichItem item
---@param x number
---@param y number
---@return boolean
function UnitDropItemPointBJ(whichUnit, whichItem, x, y) end

---@param whichUnit unit
---@param whichItem item
---@param loc location
---@return boolean
function UnitDropItemPointLoc(whichUnit, whichItem, loc) end

---@param whichUnit unit
---@param whichItem item
---@param slot integer
---@return boolean
function UnitDropItemSlotBJ(whichUnit, whichItem, slot) end

---@param whichUnit unit
---@param whichItem item
---@param target widget
---@return boolean
function UnitDropItemTargetBJ(whichUnit, whichItem, target) end

---@param whichUnit unit
---@param whichItem item
---@param target widget
---@return boolean
function UnitUseItemDestructable(whichUnit, whichItem, target) end

---@param whichUnit unit
---@param whichItem item
---@param loc location
---@return boolean
function UnitUseItemPointLoc(whichUnit, whichItem, loc) end

---@param whichUnit unit
---@param itemSlot integer
---@return item
function UnitItemInSlotBJ(whichUnit, itemSlot) end

---@param whichUnit unit
---@param itemId integer
---@return integer
function GetInventoryIndexOfItemTypeBJ(whichUnit, itemId) end

---@param whichUnit unit
---@param itemId integer
---@return item
function GetItemOfTypeFromUnitBJ(whichUnit, itemId) end

---@param whichUnit unit
---@param itemId integer
---@return boolean
function UnitHasItemOfTypeBJ(whichUnit, itemId) end

---@param whichUnit unit
---@return integer
function UnitInventoryCount(whichUnit) end

---@param whichUnit unit
---@return integer
function UnitInventorySizeBJ(whichUnit) end

---@param whichItem item
---@param flag boolean
function SetItemInvulnerableBJ(whichItem, flag) end

---@param whichItem item
---@param flag boolean
function SetItemDropOnDeathBJ(whichItem, flag) end

---@param whichItem item
---@param flag boolean
function SetItemDroppableBJ(whichItem, flag) end

---@param whichItem item
---@param whichPlayer player
---@param changeColor boolean
function SetItemPlayerBJ(whichItem, whichPlayer, changeColor) end

---@param show boolean
---@param whichItem item
function SetItemVisibleBJ(show, whichItem) end

---@param whichItem item
---@return boolean
function IsItemHiddenBJ(whichItem) end

---@param level integer
---@return integer
function ChooseRandomItemBJ(level) end

---@param level integer
---@param whichType itemtype
---@return integer
function ChooseRandomItemExBJ(level, whichType) end

---@return integer
function ChooseRandomNPBuildingBJ() end

---@param level integer
---@return integer
function ChooseRandomCreepBJ(level) end

---@param r rect
---@param actionFunc code
function EnumItemsInRectBJ(r, actionFunc) end

function RandomItemInRectBJEnum() end

---@param r rect
---@param filter boolexpr
---@return item
function RandomItemInRectBJ(r, filter) end

---@param r rect
---@return item
function RandomItemInRectSimpleBJ(r) end

---@param whichItem item
---@param status integer
---@return boolean
function CheckItemStatus(whichItem, status) end

---@param itemId integer
---@param status integer
---@return boolean
function CheckItemcodeStatus(itemId, status) end

---@param unitId integer
---@return integer
function UnitId2OrderIdBJ(unitId) end

---@param unitIdString string
---@return integer
function String2UnitIdBJ(unitIdString) end

---@param unitId integer
---@return string
function UnitId2StringBJ(unitId) end

---@param orderIdString string
---@return integer
function String2OrderIdBJ(orderIdString) end

---@param orderId integer
---@return string
function OrderId2StringBJ(orderId) end

---@return integer
function GetIssuedOrderIdBJ() end

---@return unit
function GetKillingUnitBJ() end

---@param id player
---@param unitid integer
---@param loc location
---@param face number
---@return unit
function CreateUnitAtLocSaveLast(id, unitid, loc, face) end

---@return unit
function GetLastCreatedUnit() end

---@param count integer
---@param unitId integer
---@param whichPlayer player
---@param loc location
---@param face number
---@return group
function CreateNUnitsAtLoc(count, unitId, whichPlayer, loc, face) end

---@param count integer
---@param unitId integer
---@param whichPlayer player
---@param loc location
---@param lookAt location
---@return group
function CreateNUnitsAtLocFacingLocBJ(count, unitId, whichPlayer, loc, lookAt) end

function GetLastCreatedGroupEnum() end

---@return group
function GetLastCreatedGroup() end

---@param unitid integer
---@param whichPlayer player
---@param loc location
---@return unit
function CreateCorpseLocBJ(unitid, whichPlayer, loc) end

---@param suspend boolean
---@param whichUnit unit
function UnitSuspendDecayBJ(suspend, whichUnit) end

function DelayedSuspendDecayStopAnimEnum() end

function DelayedSuspendDecayBoneEnum() end

function DelayedSuspendDecayFleshEnum() end

function DelayedSuspendDecay() end

function DelayedSuspendDecayCreate() end

---@param style integer
---@param unitid integer
---@param whichPlayer player
---@param loc location
---@param facing number
---@return unit
function CreatePermanentCorpseLocBJ(style, unitid, whichPlayer, loc, facing) end

---@param whichState unitstate
---@param whichUnit unit
---@return number
function GetUnitStateSwap(whichState, whichUnit) end

---@param whichUnit unit
---@param whichState unitstate
---@param whichMaxState unitstate
---@return number
function GetUnitStatePercent(whichUnit, whichState, whichMaxState) end

---@param whichUnit unit
---@return number
function GetUnitLifePercent(whichUnit) end

---@param whichUnit unit
---@return number
function GetUnitManaPercent(whichUnit) end

---@param whichUnit unit
function SelectUnitSingle(whichUnit) end

function SelectGroupBJEnum() end

---@param g group
function SelectGroupBJ(g) end

---@param whichUnit unit
function SelectUnitAdd(whichUnit) end

---@param whichUnit unit
function SelectUnitRemove(whichUnit) end

---@param whichPlayer player
function ClearSelectionForPlayer(whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
function SelectUnitForPlayerSingle(whichUnit, whichPlayer) end

---@param g group
---@param whichPlayer player
function SelectGroupForPlayerBJ(g, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
function SelectUnitAddForPlayer(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
function SelectUnitRemoveForPlayer(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param newValue number
function SetUnitLifeBJ(whichUnit, newValue) end

---@param whichUnit unit
---@param newValue number
function SetUnitManaBJ(whichUnit, newValue) end

---@param whichUnit unit
---@param percent number
function SetUnitLifePercentBJ(whichUnit, percent) end

---@param whichUnit unit
---@param percent number
function SetUnitManaPercentBJ(whichUnit, percent) end

---@param whichUnit unit
---@return boolean
function IsUnitDeadBJ(whichUnit) end

---@param whichUnit unit
---@return boolean
function IsUnitAliveBJ(whichUnit) end

function IsUnitGroupDeadBJEnum() end

---@param g group
---@return boolean
function IsUnitGroupDeadBJ(g) end

function IsUnitGroupEmptyBJEnum() end

---@param g group
---@return boolean
function IsUnitGroupEmptyBJ(g) end

function IsUnitGroupInRectBJEnum() end

---@param g group
---@param r rect
---@return boolean
function IsUnitGroupInRectBJ(g, r) end

---@param whichUnit unit
---@return boolean
function IsUnitHiddenBJ(whichUnit) end

---@param whichUnit unit
function ShowUnitHide(whichUnit) end

---@param whichUnit unit
function ShowUnitShow(whichUnit) end

---@return boolean
function IssueHauntOrderAtLocBJFilter() end

---@param whichPeon unit
---@param loc location
---@return boolean
function IssueHauntOrderAtLocBJ(whichPeon, loc) end

---@param whichPeon unit
---@param unitId integer
---@param loc location
---@return boolean
function IssueBuildOrderByIdLocBJ(whichPeon, unitId, loc) end

---@param whichUnit unit
---@param unitId integer
---@return boolean
function IssueTrainOrderByIdBJ(whichUnit, unitId) end

---@param g group
---@param unitId integer
---@return boolean
function GroupTrainOrderByIdBJ(g, unitId) end

---@param whichUnit unit
---@param techId integer
---@return boolean
function IssueUpgradeOrderByIdBJ(whichUnit, techId) end

---@return unit
function GetAttackedUnitBJ() end

---@param whichUnit unit
---@param newHeight number
---@param rate number
function SetUnitFlyHeightBJ(whichUnit, newHeight, rate) end

---@param whichUnit unit
---@param turnSpeed number
function SetUnitTurnSpeedBJ(whichUnit, turnSpeed) end

---@param whichUnit unit
---@param propWindow number
function SetUnitPropWindowBJ(whichUnit, propWindow) end

---@param whichUnit unit
---@return number
function GetUnitPropWindowBJ(whichUnit) end

---@param whichUnit unit
---@return number
function GetUnitDefaultPropWindowBJ(whichUnit) end

---@param whichUnit unit
---@param blendTime number
function SetUnitBlendTimeBJ(whichUnit, blendTime) end

---@param whichUnit unit
---@param acquireRange number
function SetUnitAcquireRangeBJ(whichUnit, acquireRange) end

---@param whichUnit unit
---@param canSleep boolean
function UnitSetCanSleepBJ(whichUnit, canSleep) end

---@param whichUnit unit
---@return boolean
function UnitCanSleepBJ(whichUnit) end

---@param whichUnit unit
function UnitWakeUpBJ(whichUnit) end

---@param whichUnit unit
---@return boolean
function UnitIsSleepingBJ(whichUnit) end

function WakePlayerUnitsEnum() end

---@param whichPlayer player
function WakePlayerUnits(whichPlayer) end

---@param enable boolean
function EnableCreepSleepBJ(enable) end

---@param whichUnit unit
---@param generate boolean
---@return boolean
function UnitGenerateAlarms(whichUnit, generate) end

---@param whichUnit unit
---@return boolean
function DoesUnitGenerateAlarms(whichUnit) end

function PauseAllUnitsBJEnum() end

---@param pause boolean
function PauseAllUnitsBJ(pause) end

---@param pause boolean
---@param whichUnit unit
function PauseUnitBJ(pause, whichUnit) end

---@param whichUnit unit
---@return boolean
function IsUnitPausedBJ(whichUnit) end

---@param flag boolean
---@param whichUnit unit
function UnitPauseTimedLifeBJ(flag, whichUnit) end

---@param duration number
---@param buffId integer
---@param whichUnit unit
function UnitApplyTimedLifeBJ(duration, buffId, whichUnit) end

---@param share boolean
---@param whichUnit unit
---@param whichPlayer player
function UnitShareVisionBJ(share, whichUnit, whichPlayer) end

---@param buffType integer
---@param whichUnit unit
function UnitRemoveBuffsBJ(buffType, whichUnit) end

---@param polarity integer
---@param resist integer
---@param whichUnit unit
---@param bTLife boolean
---@param bAura boolean
function UnitRemoveBuffsExBJ(polarity, resist, whichUnit, bTLife, bAura) end

---@param polarity integer
---@param resist integer
---@param whichUnit unit
---@param bTLife boolean
---@param bAura boolean
---@return integer
function UnitCountBuffsExBJ(polarity, resist, whichUnit, bTLife, bAura) end

---@param abilityId integer
---@param whichUnit unit
---@return boolean
function UnitRemoveAbilityBJ(abilityId, whichUnit) end

---@param abilityId integer
---@param whichUnit unit
---@return boolean
function UnitAddAbilityBJ(abilityId, whichUnit) end

---@param whichType unittype
---@param whichUnit unit
---@return boolean
function UnitRemoveTypeBJ(whichType, whichUnit) end

---@param whichType unittype
---@param whichUnit unit
---@return boolean
function UnitAddTypeBJ(whichType, whichUnit) end

---@param permanent boolean
---@param abilityId integer
---@param whichUnit unit
---@return boolean
function UnitMakeAbilityPermanentBJ(permanent, abilityId, whichUnit) end

---@param whichUnit unit
---@param exploded boolean
function SetUnitExplodedBJ(whichUnit, exploded) end

---@param whichUnit unit
function ExplodeUnitBJ(whichUnit) end

---@return unit
function GetTransportUnitBJ() end

---@return unit
function GetLoadedUnitBJ() end

---@param whichUnit unit
---@param whichTransport unit
---@return boolean
function IsUnitInTransportBJ(whichUnit, whichTransport) end

---@param whichUnit unit
---@return boolean
function IsUnitLoadedBJ(whichUnit) end

---@param whichUnit unit
---@return boolean
function IsUnitIllusionBJ(whichUnit) end

---@param whichUnit unit
---@param newUnitId integer
---@param unitStateMethod integer
---@return unit
function ReplaceUnitBJ(whichUnit, newUnitId, unitStateMethod) end

---@return unit
function GetLastReplacedUnitBJ() end

---@param whichUnit unit
---@param loc location
---@param facing number
function SetUnitPositionLocFacingBJ(whichUnit, loc, facing) end

---@param whichUnit unit
---@param loc location
---@param lookAt location
function SetUnitPositionLocFacingLocBJ(whichUnit, loc, lookAt) end

---@param itemId integer
---@param whichUnit unit
---@param currentStock integer
---@param stockMax integer
function AddItemToStockBJ(itemId, whichUnit, currentStock, stockMax) end

---@param unitId integer
---@param whichUnit unit
---@param currentStock integer
---@param stockMax integer
function AddUnitToStockBJ(unitId, whichUnit, currentStock, stockMax) end

---@param itemId integer
---@param whichUnit unit
function RemoveItemFromStockBJ(itemId, whichUnit) end

---@param unitId integer
---@param whichUnit unit
function RemoveUnitFromStockBJ(unitId, whichUnit) end

---@param enable boolean
---@param whichUnit unit
function SetUnitUseFoodBJ(enable, whichUnit) end

---@param whichUnit unit
---@param delay number
---@param radius number
---@param loc location
---@param amount number
---@param whichAttack attacktype
---@param whichDamage damagetype
---@return boolean
function UnitDamagePointLoc(whichUnit, delay, radius, loc, amount, whichAttack, whichDamage) end

---@param whichUnit unit
---@param target unit
---@param amount number
---@param whichAttack attacktype
---@param whichDamage damagetype
---@return boolean
function UnitDamageTargetBJ(whichUnit, target, amount, whichAttack, whichDamage) end

---@param objectid integer
---@param loc location
---@param facing number
---@param scale number
---@param variation integer
---@return destructable
function CreateDestructableLoc(objectid, loc, facing, scale, variation) end

---@param objectid integer
---@param loc location
---@param facing number
---@param scale number
---@param variation integer
---@return destructable
function CreateDeadDestructableLocBJ(objectid, loc, facing, scale, variation) end

---@return destructable
function GetLastCreatedDestructable() end

---@param flag boolean
---@param d destructable
function ShowDestructableBJ(flag, d) end

---@param d destructable
---@param flag boolean
function SetDestructableInvulnerableBJ(d, flag) end

---@param d destructable
---@return boolean
function IsDestructableInvulnerableBJ(d) end

---@param whichDestructable destructable
---@return location
function GetDestructableLoc(whichDestructable) end

---@param r rect
---@param actionFunc code
function EnumDestructablesInRectAll(r, actionFunc) end

---@return boolean
function EnumDestructablesInCircleBJFilter() end

---@param d destructable
---@return boolean
function IsDestructableDeadBJ(d) end

---@param d destructable
---@return boolean
function IsDestructableAliveBJ(d) end

function RandomDestructableInRectBJEnum() end

---@param r rect
---@param filter boolexpr
---@return destructable
function RandomDestructableInRectBJ(r, filter) end

---@param r rect
---@return destructable
function RandomDestructableInRectSimpleBJ(r) end

---@param radius number
---@param loc location
---@param actionFunc code
function EnumDestructablesInCircleBJ(radius, loc, actionFunc) end

---@param d destructable
---@param percent number
function SetDestructableLifePercentBJ(d, percent) end

---@param d destructable
---@param max number
function SetDestructableMaxLifeBJ(d, max) end

---@param gateOperation integer
---@param d destructable
function ModifyGateBJ(gateOperation, d) end

---@param d destructable
---@return integer
function GetElevatorHeight(d) end

---@param d destructable
---@param newHeight integer
function ChangeElevatorHeight(d, newHeight) end

function NudgeUnitsInRectEnum() end

function NudgeItemsInRectEnum() end

---@param nudgeArea rect
function NudgeObjectsInRect(nudgeArea) end

function NearbyElevatorExistsEnum() end

---@param x number
---@param y number
---@return boolean
function NearbyElevatorExists(x, y) end

function FindElevatorWallBlockerEnum() end

---@param x number
---@param y number
---@param facing number
---@param open boolean
function ChangeElevatorWallBlocker(x, y, facing, open) end

---@param open boolean
---@param walls integer
---@param d destructable
function ChangeElevatorWalls(open, walls, d) end

---@param activate boolean
---@param waygate unit
function WaygateActivateBJ(activate, waygate) end

---@param waygate unit
---@return boolean
function WaygateIsActiveBJ(waygate) end

---@param waygate unit
---@param loc location
function WaygateSetDestinationLocBJ(waygate, loc) end

---@param waygate unit
---@return location
function WaygateGetDestinationLocBJ(waygate) end

---@param flag boolean
---@param whichUnit unit
function UnitSetUsesAltIconBJ(flag, whichUnit) end

---@param whichPlayer player
---@param key string
function ForceUIKeyBJ(whichPlayer, key) end

---@param whichPlayer player
function ForceUICancelBJ(whichPlayer) end

---@param whichGroup group
---@param callback code
function ForGroupBJ(whichGroup, callback) end

---@param whichUnit unit
---@param whichGroup group
function GroupAddUnitSimple(whichUnit, whichGroup) end

---@param whichUnit unit
---@param whichGroup group
function GroupRemoveUnitSimple(whichUnit, whichGroup) end

function GroupAddGroupEnum() end

---@param sourceGroup group
---@param destGroup group
function GroupAddGroup(sourceGroup, destGroup) end

function GroupRemoveGroupEnum() end

---@param sourceGroup group
---@param destGroup group
function GroupRemoveGroup(sourceGroup, destGroup) end

---@param whichPlayer player
---@param whichForce force
function ForceAddPlayerSimple(whichPlayer, whichForce) end

---@param whichPlayer player
---@param whichForce force
function ForceRemovePlayerSimple(whichPlayer, whichForce) end

function GroupPickRandomUnitEnum() end

---@param whichGroup group
---@return unit
function GroupPickRandomUnit(whichGroup) end

function ForcePickRandomPlayerEnum() end

---@param whichForce force
---@return player
function ForcePickRandomPlayer(whichForce) end

---@param whichPlayer player
---@param enumFilter boolexpr
---@param enumAction code
function EnumUnitsSelected(whichPlayer, enumFilter, enumAction) end

---@param r rect
---@param filter boolexpr
---@return group
function GetUnitsInRectMatching(r, filter) end

---@param r rect
---@return group
function GetUnitsInRectAll(r) end

---@return boolean
function GetUnitsInRectOfPlayerFilter() end

---@param r rect
---@param whichPlayer player
---@return group
function GetUnitsInRectOfPlayer(r, whichPlayer) end

---@param radius number
---@param whichLocation location
---@param filter boolexpr
---@return group
function GetUnitsInRangeOfLocMatching(radius, whichLocation, filter) end

---@param radius number
---@param whichLocation location
---@return group
function GetUnitsInRangeOfLocAll(radius, whichLocation) end

---@return boolean
function GetUnitsOfTypeIdAllFilter() end

---@param unitid integer
---@return group
function GetUnitsOfTypeIdAll(unitid) end

---@param whichPlayer player
---@param filter boolexpr
---@return group
function GetUnitsOfPlayerMatching(whichPlayer, filter) end

---@param whichPlayer player
---@return group
function GetUnitsOfPlayerAll(whichPlayer) end

---@return boolean
function GetUnitsOfPlayerAndTypeIdFilter() end

---@param whichPlayer player
---@param unitid integer
---@return group
function GetUnitsOfPlayerAndTypeId(whichPlayer, unitid) end

---@param whichPlayer player
---@return group
function GetUnitsSelectedAll(whichPlayer) end

---@param whichPlayer player
---@return force
function GetForceOfPlayer(whichPlayer) end

---@return force
function GetPlayersAll() end

---@param whichControl mapcontrol
---@return force
function GetPlayersByMapControl(whichControl) end

---@param whichPlayer player
---@return force
function GetPlayersAllies(whichPlayer) end

---@param whichPlayer player
---@return force
function GetPlayersEnemies(whichPlayer) end

---@param filter boolexpr
---@return force
function GetPlayersMatching(filter) end

function CountUnitsInGroupEnum() end

---@param g group
---@return integer
function CountUnitsInGroup(g) end

function CountPlayersInForceEnum() end

---@param f force
---@return integer
function CountPlayersInForceBJ(f) end

function GetRandomSubGroupEnum() end

---@param count integer
---@param sourceGroup group
---@return group
function GetRandomSubGroup(count, sourceGroup) end

---@return boolean
function LivingPlayerUnitsOfTypeIdFilter() end

---@param unitId integer
---@param whichPlayer player
---@return integer
function CountLivingPlayerUnitsOfTypeId(unitId, whichPlayer) end

---@param whichUnit unit
function ResetUnitAnimation(whichUnit) end

---@param whichUnit unit
---@param percentScale number
function SetUnitTimeScalePercent(whichUnit, percentScale) end

---@param whichUnit unit
---@param percentScaleX number
---@param percentScaleY number
---@param percentScaleZ number
function SetUnitScalePercent(whichUnit, percentScaleX, percentScaleY, percentScaleZ) end

---@param whichUnit unit
---@param red number
---@param green number
---@param blue number
---@param transparency number
function SetUnitVertexColorBJ(whichUnit, red, green, blue, transparency) end

---@param whichUnit unit
---@param red number
---@param green number
---@param blue number
---@param transparency number
function UnitAddIndicatorBJ(whichUnit, red, green, blue, transparency) end

---@param whichDestructable destructable
---@param red number
---@param green number
---@param blue number
---@param transparency number
function DestructableAddIndicatorBJ(whichDestructable, red, green, blue, transparency) end

---@param whichItem item
---@param red number
---@param green number
---@param blue number
---@param transparency number
function ItemAddIndicatorBJ(whichItem, red, green, blue, transparency) end

---@param whichUnit unit
---@param target location
---@param duration number
function SetUnitFacingToFaceLocTimed(whichUnit, target, duration) end

---@param whichUnit unit
---@param target unit
---@param duration number
function SetUnitFacingToFaceUnitTimed(whichUnit, target, duration) end

---@param whichUnit unit
---@param whichAnimation string
function QueueUnitAnimationBJ(whichUnit, whichAnimation) end

---@param d destructable
---@param whichAnimation string
function SetDestructableAnimationBJ(d, whichAnimation) end

---@param d destructable
---@param whichAnimation string
function QueueDestructableAnimationBJ(d, whichAnimation) end

---@param d destructable
---@param percentScale number
function SetDestAnimationSpeedPercent(d, percentScale) end

---@param flag boolean
---@param whichDialog dialog
---@param whichPlayer player
function DialogDisplayBJ(flag, whichDialog, whichPlayer) end

---@param whichDialog dialog
---@param message string
function DialogSetMessageBJ(whichDialog, message) end

---@param whichDialog dialog
---@param buttonText string
---@return button
function DialogAddButtonBJ(whichDialog, buttonText) end

---@param whichDialog dialog
---@param buttonText string
---@param hotkey integer
---@return button
function DialogAddButtonWithHotkeyBJ(whichDialog, buttonText, hotkey) end

---@param whichDialog dialog
function DialogClearBJ(whichDialog) end

---@return button
function GetLastCreatedButtonBJ() end

---@return button
function GetClickedButtonBJ() end

---@return dialog
function GetClickedDialogBJ() end

---@param sourcePlayer player
---@param whichAllianceSetting alliancetype
---@param value boolean
---@param otherPlayer player
function SetPlayerAllianceBJ(sourcePlayer, whichAllianceSetting, value, otherPlayer) end

---@param sourcePlayer player
---@param otherPlayer player
---@param flag boolean
function SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, flag) end

---@param sourcePlayer player
---@param otherPlayer player
---@param flag boolean
function SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, flag) end

---@param sourcePlayer player
---@param otherPlayer player
---@param flag boolean
function SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, flag) end

---@param sourcePlayer player
---@param otherPlayer player
---@param flag boolean
function SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, flag) end

---@param sourcePlayer player
---@param otherPlayer player
---@param allianceState integer
function SetPlayerAllianceStateBJ(sourcePlayer, otherPlayer, allianceState) end

---@param sourceForce force
---@param targetForce force
---@param allianceState integer
function SetForceAllianceStateBJ(sourceForce, targetForce, allianceState) end

---@param playerA player
---@param playerB player
---@return boolean
function PlayersAreCoAllied(playerA, playerB) end

---@param whichPlayer player
function ShareEverythingWithTeamAI(whichPlayer) end

---@param whichPlayer player
function ShareEverythingWithTeam(whichPlayer) end

function ConfigureNeutralVictim() end

function MakeUnitsPassiveForPlayerEnum() end

---@param whichPlayer player
function MakeUnitsPassiveForPlayer(whichPlayer) end

---@param whichPlayer player
function MakeUnitsPassiveForTeam(whichPlayer) end

---@param gameResult playergameresult
---@return boolean
function AllowVictoryDefeat(gameResult) end

function EndGameBJ() end

---@param whichPlayer player
---@param leftGame boolean
function MeleeVictoryDialogBJ(whichPlayer, leftGame) end

---@param whichPlayer player
---@param leftGame boolean
function MeleeDefeatDialogBJ(whichPlayer, leftGame) end

---@param whichPlayer player
---@param leftGame boolean
function GameOverDialogBJ(whichPlayer, leftGame) end

---@param whichPlayer player
---@param gameResult playergameresult
---@param leftGame boolean
function RemovePlayerPreserveUnitsBJ(whichPlayer, gameResult, leftGame) end

function CustomVictoryOkBJ() end

function CustomVictoryQuitBJ() end

---@param whichPlayer player
function CustomVictoryDialogBJ(whichPlayer) end

---@param whichPlayer player
function CustomVictorySkipBJ(whichPlayer) end

---@param whichPlayer player
---@param showDialog boolean
---@param showScores boolean
function CustomVictoryBJ(whichPlayer, showDialog, showScores) end

function CustomDefeatRestartBJ() end

function CustomDefeatReduceDifficultyBJ() end

function CustomDefeatLoadBJ() end

function CustomDefeatQuitBJ() end

---@param whichPlayer player
---@param message string
function CustomDefeatDialogBJ(whichPlayer, message) end

---@param whichPlayer player
---@param message string
function CustomDefeatBJ(whichPlayer, message) end

---@param nextLevel string
function SetNextLevelBJ(nextLevel) end

---@param flag boolean
---@param whichPlayer player
function SetPlayerOnScoreScreenBJ(flag, whichPlayer) end

---@param questType integer
---@param title string
---@param description string
---@param iconPath string
---@return quest
function CreateQuestBJ(questType, title, description, iconPath) end

---@param whichQuest quest
function DestroyQuestBJ(whichQuest) end

---@param enabled boolean
---@param whichQuest quest
function QuestSetEnabledBJ(enabled, whichQuest) end

---@param whichQuest quest
---@param title string
function QuestSetTitleBJ(whichQuest, title) end

---@param whichQuest quest
---@param description string
function QuestSetDescriptionBJ(whichQuest, description) end

---@param whichQuest quest
---@param completed boolean
function QuestSetCompletedBJ(whichQuest, completed) end

---@param whichQuest quest
---@param failed boolean
function QuestSetFailedBJ(whichQuest, failed) end

---@param whichQuest quest
---@param discovered boolean
function QuestSetDiscoveredBJ(whichQuest, discovered) end

---@return quest
function GetLastCreatedQuestBJ() end

---@param whichQuest quest
---@param description string
---@return questitem
function CreateQuestItemBJ(whichQuest, description) end

---@param whichQuestItem questitem
---@param description string
function QuestItemSetDescriptionBJ(whichQuestItem, description) end

---@param whichQuestItem questitem
---@param completed boolean
function QuestItemSetCompletedBJ(whichQuestItem, completed) end

---@return questitem
function GetLastCreatedQuestItemBJ() end

---@param description string
---@return defeatcondition
function CreateDefeatConditionBJ(description) end

---@param whichCondition defeatcondition
function DestroyDefeatConditionBJ(whichCondition) end

---@param whichCondition defeatcondition
---@param description string
function DefeatConditionSetDescriptionBJ(whichCondition, description) end

---@return defeatcondition
function GetLastCreatedDefeatConditionBJ() end

function FlashQuestDialogButtonBJ() end

---@param f force
---@param messageType integer
---@param message string
function QuestMessageBJ(f, messageType, message) end

---@param t timer
---@param periodic boolean
---@param timeout number
---@return timer
function StartTimerBJ(t, periodic, timeout) end

---@param periodic boolean
---@param timeout number
---@return timer
function CreateTimerBJ(periodic, timeout) end

---@param whichTimer timer
function DestroyTimerBJ(whichTimer) end

---@param pause boolean
---@param whichTimer timer
function PauseTimerBJ(pause, whichTimer) end

---@return timer
function GetLastCreatedTimerBJ() end

---@param t timer
---@param title string
---@return timerdialog
function CreateTimerDialogBJ(t, title) end

---@param td timerdialog
function DestroyTimerDialogBJ(td) end

---@param td timerdialog
---@param title string
function TimerDialogSetTitleBJ(td, title) end

---@param td timerdialog
---@param red number
---@param green number
---@param blue number
---@param transparency number
function TimerDialogSetTitleColorBJ(td, red, green, blue, transparency) end

---@param td timerdialog
---@param red number
---@param green number
---@param blue number
---@param transparency number
function TimerDialogSetTimeColorBJ(td, red, green, blue, transparency) end

---@param td timerdialog
---@param speedMultFactor number
function TimerDialogSetSpeedBJ(td, speedMultFactor) end

---@param show boolean
---@param td timerdialog
---@param whichPlayer player
function TimerDialogDisplayForPlayerBJ(show, td, whichPlayer) end

---@param show boolean
---@param td timerdialog
function TimerDialogDisplayBJ(show, td) end

---@return timerdialog
function GetLastCreatedTimerDialogBJ() end

---@param lb leaderboard
function LeaderboardResizeBJ(lb) end

---@param whichPlayer player
---@param lb leaderboard
---@param val integer
function LeaderboardSetPlayerItemValueBJ(whichPlayer, lb, val) end

---@param whichPlayer player
---@param lb leaderboard
---@param val string
function LeaderboardSetPlayerItemLabelBJ(whichPlayer, lb, val) end

---@param whichPlayer player
---@param lb leaderboard
---@param showLabel boolean
---@param showValue boolean
---@param showIcon boolean
function LeaderboardSetPlayerItemStyleBJ(whichPlayer, lb, showLabel, showValue, showIcon) end

---@param whichPlayer player
---@param lb leaderboard
---@param red number
---@param green number
---@param blue number
---@param transparency number
function LeaderboardSetPlayerItemLabelColorBJ(whichPlayer, lb, red, green, blue, transparency) end

---@param whichPlayer player
---@param lb leaderboard
---@param red number
---@param green number
---@param blue number
---@param transparency number
function LeaderboardSetPlayerItemValueColorBJ(whichPlayer, lb, red, green, blue, transparency) end

---@param lb leaderboard
---@param red number
---@param green number
---@param blue number
---@param transparency number
function LeaderboardSetLabelColorBJ(lb, red, green, blue, transparency) end

---@param lb leaderboard
---@param red number
---@param green number
---@param blue number
---@param transparency number
function LeaderboardSetValueColorBJ(lb, red, green, blue, transparency) end

---@param lb leaderboard
---@param label string
function LeaderboardSetLabelBJ(lb, label) end

---@param lb leaderboard
---@param showLabel boolean
---@param showNames boolean
---@param showValues boolean
---@param showIcons boolean
function LeaderboardSetStyleBJ(lb, showLabel, showNames, showValues, showIcons) end

---@param lb leaderboard
---@return integer
function LeaderboardGetItemCountBJ(lb) end

---@param lb leaderboard
---@param whichPlayer player
---@return boolean
function LeaderboardHasPlayerItemBJ(lb, whichPlayer) end

---@param lb leaderboard
---@param toForce force
function ForceSetLeaderboardBJ(lb, toForce) end

---@param toForce force
---@param label string
---@return leaderboard
function CreateLeaderboardBJ(toForce, label) end

---@param lb leaderboard
function DestroyLeaderboardBJ(lb) end

---@param show boolean
---@param lb leaderboard
function LeaderboardDisplayBJ(show, lb) end

---@param whichPlayer player
---@param lb leaderboard
---@param label string
---@param value integer
function LeaderboardAddItemBJ(whichPlayer, lb, label, value) end

---@param whichPlayer player
---@param lb leaderboard
function LeaderboardRemovePlayerItemBJ(whichPlayer, lb) end

---@param lb leaderboard
---@param sortType integer
---@param ascending boolean
function LeaderboardSortItemsBJ(lb, sortType, ascending) end

---@param lb leaderboard
---@param ascending boolean
function LeaderboardSortItemsByPlayerBJ(lb, ascending) end

---@param lb leaderboard
---@param ascending boolean
function LeaderboardSortItemsByLabelBJ(lb, ascending) end

---@param whichPlayer player
---@param lb leaderboard
---@return integer
function LeaderboardGetPlayerIndexBJ(whichPlayer, lb) end

---@param position integer
---@param lb leaderboard
---@return player
function LeaderboardGetIndexedPlayerBJ(position, lb) end

---@param whichPlayer player
---@return leaderboard
function PlayerGetLeaderboardBJ(whichPlayer) end

---@return leaderboard
function GetLastCreatedLeaderboard() end

---@param cols integer
---@param rows integer
---@param title string
---@return multiboard
function CreateMultiboardBJ(cols, rows, title) end

---@param mb multiboard
function DestroyMultiboardBJ(mb) end

---@return multiboard
function GetLastCreatedMultiboard() end

---@param show boolean
---@param mb multiboard
function MultiboardDisplayBJ(show, mb) end

---@param minimize boolean
---@param mb multiboard
function MultiboardMinimizeBJ(minimize, mb) end

---@param mb multiboard
---@param red number
---@param green number
---@param blue number
---@param transparency number
function MultiboardSetTitleTextColorBJ(mb, red, green, blue, transparency) end

---@param flag boolean
function MultiboardAllowDisplayBJ(flag) end

---@param mb multiboard
---@param col integer
---@param row integer
---@param showValue boolean
---@param showIcon boolean
function MultiboardSetItemStyleBJ(mb, col, row, showValue, showIcon) end

---@param mb multiboard
---@param col integer
---@param row integer
---@param val string
function MultiboardSetItemValueBJ(mb, col, row, val) end

---@param mb multiboard
---@param col integer
---@param row integer
---@param red number
---@param green number
---@param blue number
---@param transparency number
function MultiboardSetItemColorBJ(mb, col, row, red, green, blue, transparency) end

---@param mb multiboard
---@param col integer
---@param row integer
---@param width number
function MultiboardSetItemWidthBJ(mb, col, row, width) end

---@param mb multiboard
---@param col integer
---@param row integer
---@param iconFileName string
function MultiboardSetItemIconBJ(mb, col, row, iconFileName) end

---@param size number
---@return number
function TextTagSize2Height(size) end

---@param speed number
---@return number
function TextTagSpeed2Velocity(speed) end

---@param tt texttag
---@param red number
---@param green number
---@param blue number
---@param transparency number
function SetTextTagColorBJ(tt, red, green, blue, transparency) end

---@param tt texttag
---@param speed number
---@param angle number
function SetTextTagVelocityBJ(tt, speed, angle) end

---@param tt texttag
---@param s string
---@param size number
function SetTextTagTextBJ(tt, s, size) end

---@param tt texttag
---@param loc location
---@param zOffset number
function SetTextTagPosBJ(tt, loc, zOffset) end

---@param tt texttag
---@param whichUnit unit
---@param zOffset number
function SetTextTagPosUnitBJ(tt, whichUnit, zOffset) end

---@param tt texttag
---@param flag boolean
function SetTextTagSuspendedBJ(tt, flag) end

---@param tt texttag
---@param flag boolean
function SetTextTagPermanentBJ(tt, flag) end

---@param tt texttag
---@param age number
function SetTextTagAgeBJ(tt, age) end

---@param tt texttag
---@param lifespan number
function SetTextTagLifespanBJ(tt, lifespan) end

---@param tt texttag
---@param fadepoint number
function SetTextTagFadepointBJ(tt, fadepoint) end

---@param s string
---@param loc location
---@param zOffset number
---@param size number
---@param red number
---@param green number
---@param blue number
---@param transparency number
---@return texttag
function CreateTextTagLocBJ(s, loc, zOffset, size, red, green, blue, transparency) end

---@param s string
---@param whichUnit unit
---@param zOffset number
---@param size number
---@param red number
---@param green number
---@param blue number
---@param transparency number
---@return texttag
function CreateTextTagUnitBJ(s, whichUnit, zOffset, size, red, green, blue, transparency) end

---@param tt texttag
function DestroyTextTagBJ(tt) end

---@param show boolean
---@param tt texttag
---@param whichForce force
function ShowTextTagForceBJ(show, tt, whichForce) end

---@return texttag
function GetLastCreatedTextTag() end

function PauseGameOn() end

function PauseGameOff() end

---@param whichForce force
function SetUserControlForceOn(whichForce) end

---@param whichForce force
function SetUserControlForceOff(whichForce) end

---@param whichForce force
---@param fadeDuration number
function ShowInterfaceForceOn(whichForce, fadeDuration) end

---@param whichForce force
---@param fadeDuration number
function ShowInterfaceForceOff(whichForce, fadeDuration) end

---@param whichForce force
---@param x number
---@param y number
---@param duration number
function PingMinimapForForce(whichForce, x, y, duration) end

---@param whichForce force
---@param loc location
---@param duration number
function PingMinimapLocForForce(whichForce, loc, duration) end

---@param whichPlayer player
---@param x number
---@param y number
---@param duration number
function PingMinimapForPlayer(whichPlayer, x, y, duration) end

---@param whichPlayer player
---@param loc location
---@param duration number
function PingMinimapLocForPlayer(whichPlayer, loc, duration) end

---@param whichForce force
---@param x number
---@param y number
---@param duration number
---@param style integer
---@param red number
---@param green number
---@param blue number
function PingMinimapForForceEx(whichForce, x, y, duration, style, red, green, blue) end

---@param whichForce force
---@param loc location
---@param duration number
---@param style integer
---@param red number
---@param green number
---@param blue number
function PingMinimapLocForForceEx(whichForce, loc, duration, style, red, green, blue) end

---@param enable boolean
---@param f force
function EnableWorldFogBoundaryBJ(enable, f) end

---@param enable boolean
---@param f force
function EnableOcclusionBJ(enable, f) end

function CancelCineSceneBJ() end

function TryInitCinematicBehaviorBJ() end

---@param soundHandle sound
---@param portraitUnitId integer
---@param color playercolor
---@param speakerTitle string
---@param text string
---@param sceneDuration number
---@param voiceoverDuration number
function SetCinematicSceneBJ(soundHandle, portraitUnitId, color, speakerTitle, text, sceneDuration, voiceoverDuration) end

---@param soundHandle sound
---@param timeType integer
---@param timeVal number
---@return number
function GetTransmissionDuration(soundHandle, timeType, timeVal) end

---@param soundHandle sound
---@param timeType integer
---@param timeVal number
function WaitTransmissionDuration(soundHandle, timeType, timeVal) end

---@param unitId integer
---@param color playercolor
---@param x number
---@param y number
---@param soundHandle sound
---@param unitName string
---@param message string
---@param duration number
function DoTransmissionBasicsXYBJ(unitId, color, x, y, soundHandle, unitName, message, duration) end

---@param toForce force
---@param whichUnit unit
---@param unitName string
---@param soundHandle sound
---@param message string
---@param timeType integer
---@param timeVal number
---@param wait boolean
function TransmissionFromUnitWithNameBJ(toForce, whichUnit, unitName, soundHandle, message, timeType, timeVal, wait) end

---@param toForce force
---@param speaker unit
---@param speakerType integer
---@param soundHandle sound
---@param timeType integer
---@param timeVal number
---@param wait boolean
---@return boolean
function PlayDialogueFromSpeakerEx(toForce, speaker, speakerType, soundHandle, timeType, timeVal, wait) end

---@param toForce force
---@param fromPlayer player
---@param speakerType integer
---@param loc location
---@param soundHandle sound
---@param timeType integer
---@param timeVal number
---@param wait boolean
---@return boolean
function PlayDialogueFromSpeakerTypeEx(toForce, fromPlayer, speakerType, loc, soundHandle, timeType, timeVal, wait) end

---@param toForce force
---@param fromPlayer player
---@param unitId integer
---@param unitName string
---@param loc location
---@param soundHandle sound
---@param message string
---@param timeType integer
---@param timeVal number
---@param wait boolean
function TransmissionFromUnitTypeWithNameBJ(toForce, fromPlayer, unitId, unitName, loc, soundHandle, message, timeType, timeVal, wait) end

---@return number
function GetLastTransmissionDurationBJ() end

---@param flag boolean
function ForceCinematicSubtitlesBJ(flag) end

---@param cineMode boolean
---@param forForce force
---@param interfaceFadeTime number
function CinematicModeExBJ(cineMode, forForce, interfaceFadeTime) end

---@param cineMode boolean
---@param forForce force
function CinematicModeBJ(cineMode, forForce) end

---@param flag boolean
function DisplayCineFilterBJ(flag) end

---@param red number
---@param green number
---@param blue number
---@param duration number
---@param tex string
---@param startTrans number
---@param endTrans number
function CinematicFadeCommonBJ(red, green, blue, duration, tex, startTrans, endTrans) end

function FinishCinematicFadeBJ() end

---@param duration number
function FinishCinematicFadeAfterBJ(duration) end

function ContinueCinematicFadeBJ() end

---@param duration number
---@param red number
---@param green number
---@param blue number
---@param trans number
---@param tex string
function ContinueCinematicFadeAfterBJ(duration, red, green, blue, trans, tex) end

function AbortCinematicFadeBJ() end

---@param fadetype integer
---@param duration number
---@param tex string
---@param red number
---@param green number
---@param blue number
---@param trans number
function CinematicFadeBJ(fadetype, duration, tex, red, green, blue, trans) end

---@param duration number
---@param bmode blendmode
---@param tex string
---@param red0 number
---@param green0 number
---@param blue0 number
---@param trans0 number
---@param red1 number
---@param green1 number
---@param blue1 number
---@param trans1 number
function CinematicFilterGenericBJ(duration, bmode, tex, red0, green0, blue0, trans0, red1, green1, blue1, trans1) end

---@param whichUnit unit
---@param rescuer player
---@param changeColor boolean
function RescueUnitBJ(whichUnit, rescuer, changeColor) end

function TriggerActionUnitRescuedBJ() end

function TryInitRescuableTriggersBJ() end

---@param changeColor boolean
function SetRescueUnitColorChangeBJ(changeColor) end

---@param changeColor boolean
function SetRescueBuildingColorChangeBJ(changeColor) end

function MakeUnitRescuableToForceBJEnum() end

---@param whichUnit unit
---@param isRescuable boolean
---@param whichForce force
function MakeUnitRescuableToForceBJ(whichUnit, isRescuable, whichForce) end

function InitRescuableBehaviorBJ() end

---@param techid integer
---@param levels integer
---@param whichPlayer player
function SetPlayerTechResearchedSwap(techid, levels, whichPlayer) end

---@param techid integer
---@param maximum integer
---@param whichPlayer player
function SetPlayerTechMaxAllowedSwap(techid, maximum, whichPlayer) end

---@param maximum integer
---@param whichPlayer player
function SetPlayerMaxHeroesAllowed(maximum, whichPlayer) end

---@param techid integer
---@param whichPlayer player
---@return integer
function GetPlayerTechCountSimple(techid, whichPlayer) end

---@param techid integer
---@param whichPlayer player
---@return integer
function GetPlayerTechMaxAllowedSwap(techid, whichPlayer) end

---@param avail boolean
---@param abilid integer
---@param whichPlayer player
function SetPlayerAbilityAvailableBJ(avail, abilid, whichPlayer) end

---@param campaignNumber integer
function SetCampaignMenuRaceBJ(campaignNumber) end

---@param available boolean
---@param missionIndex integer
function SetMissionAvailableBJ(available, missionIndex) end

---@param available boolean
---@param campaignNumber integer
function SetCampaignAvailableBJ(available, campaignNumber) end

---@param available boolean
---@param cinematicIndex integer
function SetCinematicAvailableBJ(available, cinematicIndex) end

---@param campaignFile string
---@return gamecache
function InitGameCacheBJ(campaignFile) end

---@param cache gamecache
---@return boolean
function SaveGameCacheBJ(cache) end

---@return gamecache
function GetLastCreatedGameCacheBJ() end

---@return hashtable
function InitHashtableBJ() end

---@return hashtable
function GetLastCreatedHashtableBJ() end

---@param value number
---@param key string
---@param missionKey string
---@param cache gamecache
function StoreRealBJ(value, key, missionKey, cache) end

---@param value integer
---@param key string
---@param missionKey string
---@param cache gamecache
function StoreIntegerBJ(value, key, missionKey, cache) end

---@param value boolean
---@param key string
---@param missionKey string
---@param cache gamecache
function StoreBooleanBJ(value, key, missionKey, cache) end

---@param value string
---@param key string
---@param missionKey string
---@param cache gamecache
---@return boolean
function StoreStringBJ(value, key, missionKey, cache) end

---@param whichUnit unit
---@param key string
---@param missionKey string
---@param cache gamecache
---@return boolean
function StoreUnitBJ(whichUnit, key, missionKey, cache) end

---@param value number
---@param key integer
---@param missionKey integer
---@param table hashtable
function SaveRealBJ(value, key, missionKey, table) end

---@param value integer
---@param key integer
---@param missionKey integer
---@param table hashtable
function SaveIntegerBJ(value, key, missionKey, table) end

---@param value boolean
---@param key integer
---@param missionKey integer
---@param table hashtable
function SaveBooleanBJ(value, key, missionKey, table) end

---@param value string
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveStringBJ(value, key, missionKey, table) end

---@param whichPlayer player
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SavePlayerHandleBJ(whichPlayer, key, missionKey, table) end

---@param whichWidget widget
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveWidgetHandleBJ(whichWidget, key, missionKey, table) end

---@param whichDestructable destructable
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveDestructableHandleBJ(whichDestructable, key, missionKey, table) end

---@param whichItem item
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveItemHandleBJ(whichItem, key, missionKey, table) end

---@param whichUnit unit
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveUnitHandleBJ(whichUnit, key, missionKey, table) end

---@param whichAbility ability
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveAbilityHandleBJ(whichAbility, key, missionKey, table) end

---@param whichTimer timer
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveTimerHandleBJ(whichTimer, key, missionKey, table) end

---@param whichTrigger trigger
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveTriggerHandleBJ(whichTrigger, key, missionKey, table) end

---@param whichTriggercondition triggercondition
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveTriggerConditionHandleBJ(whichTriggercondition, key, missionKey, table) end

---@param whichTriggeraction triggeraction
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveTriggerActionHandleBJ(whichTriggeraction, key, missionKey, table) end

---@param whichEvent event
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveTriggerEventHandleBJ(whichEvent, key, missionKey, table) end

---@param whichForce force
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveForceHandleBJ(whichForce, key, missionKey, table) end

---@param whichGroup group
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveGroupHandleBJ(whichGroup, key, missionKey, table) end

---@param whichLocation location
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveLocationHandleBJ(whichLocation, key, missionKey, table) end

---@param whichRect rect
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveRectHandleBJ(whichRect, key, missionKey, table) end

---@param whichBoolexpr boolexpr
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveBooleanExprHandleBJ(whichBoolexpr, key, missionKey, table) end

---@param whichSound sound
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveSoundHandleBJ(whichSound, key, missionKey, table) end

---@param whichEffect effect
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveEffectHandleBJ(whichEffect, key, missionKey, table) end

---@param whichUnitpool unitpool
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveUnitPoolHandleBJ(whichUnitpool, key, missionKey, table) end

---@param whichItempool itempool
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveItemPoolHandleBJ(whichItempool, key, missionKey, table) end

---@param whichQuest quest
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveQuestHandleBJ(whichQuest, key, missionKey, table) end

---@param whichQuestitem questitem
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveQuestItemHandleBJ(whichQuestitem, key, missionKey, table) end

---@param whichDefeatcondition defeatcondition
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveDefeatConditionHandleBJ(whichDefeatcondition, key, missionKey, table) end

---@param whichTimerdialog timerdialog
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveTimerDialogHandleBJ(whichTimerdialog, key, missionKey, table) end

---@param whichLeaderboard leaderboard
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveLeaderboardHandleBJ(whichLeaderboard, key, missionKey, table) end

---@param whichMultiboard multiboard
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveMultiboardHandleBJ(whichMultiboard, key, missionKey, table) end

---@param whichMultiboarditem multiboarditem
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveMultiboardItemHandleBJ(whichMultiboarditem, key, missionKey, table) end

---@param whichTrackable trackable
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveTrackableHandleBJ(whichTrackable, key, missionKey, table) end

---@param whichDialog dialog
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveDialogHandleBJ(whichDialog, key, missionKey, table) end

---@param whichButton button
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveButtonHandleBJ(whichButton, key, missionKey, table) end

---@param whichTexttag texttag
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveTextTagHandleBJ(whichTexttag, key, missionKey, table) end

---@param whichLightning lightning
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveLightningHandleBJ(whichLightning, key, missionKey, table) end

---@param whichImage image
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveImageHandleBJ(whichImage, key, missionKey, table) end

---@param whichUbersplat ubersplat
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveUbersplatHandleBJ(whichUbersplat, key, missionKey, table) end

---@param whichRegion region
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveRegionHandleBJ(whichRegion, key, missionKey, table) end

---@param whichFogState fogstate
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveFogStateHandleBJ(whichFogState, key, missionKey, table) end

---@param whichFogModifier fogmodifier
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveFogModifierHandleBJ(whichFogModifier, key, missionKey, table) end

---@param whichAgent agent
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveAgentHandleBJ(whichAgent, key, missionKey, table) end

---@param whichHashtable hashtable
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveHashtableHandleBJ(whichHashtable, key, missionKey, table) end

---@param key string
---@param missionKey string
---@param cache gamecache
---@return number
function GetStoredRealBJ(key, missionKey, cache) end

---@param key string
---@param missionKey string
---@param cache gamecache
---@return integer
function GetStoredIntegerBJ(key, missionKey, cache) end

---@param key string
---@param missionKey string
---@param cache gamecache
---@return boolean
function GetStoredBooleanBJ(key, missionKey, cache) end

---@param key string
---@param missionKey string
---@param cache gamecache
---@return string
function GetStoredStringBJ(key, missionKey, cache) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return number
function LoadRealBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return integer
function LoadIntegerBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function LoadBooleanBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return string
function LoadStringBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return player
function LoadPlayerHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return widget
function LoadWidgetHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return destructable
function LoadDestructableHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return item
function LoadItemHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return unit
function LoadUnitHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return ability
function LoadAbilityHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return timer
function LoadTimerHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return trigger
function LoadTriggerHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return triggercondition
function LoadTriggerConditionHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return triggeraction
function LoadTriggerActionHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return event
function LoadTriggerEventHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return force
function LoadForceHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return group
function LoadGroupHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return location
function LoadLocationHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return rect
function LoadRectHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolexpr
function LoadBooleanExprHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return sound
function LoadSoundHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return effect
function LoadEffectHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return unitpool
function LoadUnitPoolHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return itempool
function LoadItemPoolHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return quest
function LoadQuestHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return questitem
function LoadQuestItemHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return defeatcondition
function LoadDefeatConditionHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return timerdialog
function LoadTimerDialogHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return leaderboard
function LoadLeaderboardHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return multiboard
function LoadMultiboardHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return multiboarditem
function LoadMultiboardItemHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return trackable
function LoadTrackableHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return dialog
function LoadDialogHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return button
function LoadButtonHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return texttag
function LoadTextTagHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return lightning
function LoadLightningHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return image
function LoadImageHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return ubersplat
function LoadUbersplatHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return region
function LoadRegionHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return fogstate
function LoadFogStateHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return fogmodifier
function LoadFogModifierHandleBJ(key, missionKey, table) end

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return hashtable
function LoadHashtableHandleBJ(key, missionKey, table) end

---@param key string
---@param missionKey string
---@param cache gamecache
---@param forWhichPlayer player
---@param loc location
---@param facing number
---@return unit
function RestoreUnitLocFacingAngleBJ(key, missionKey, cache, forWhichPlayer, loc, facing) end

---@param key string
---@param missionKey string
---@param cache gamecache
---@param forWhichPlayer player
---@param loc location
---@param lookAt location
---@return unit
function RestoreUnitLocFacingPointBJ(key, missionKey, cache, forWhichPlayer, loc, lookAt) end

---@return unit
function GetLastRestoredUnitBJ() end

---@param cache gamecache
function FlushGameCacheBJ(cache) end

---@param missionKey string
---@param cache gamecache
function FlushStoredMissionBJ(missionKey, cache) end

---@param table hashtable
function FlushParentHashtableBJ(table) end

---@param missionKey integer
---@param table hashtable
function FlushChildHashtableBJ(missionKey, table) end

---@param key string
---@param valueType integer
---@param missionKey string
---@param cache gamecache
---@return boolean
function HaveStoredValue(key, valueType, missionKey, cache) end

---@param key integer
---@param valueType integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function HaveSavedValue(key, valueType, missionKey, table) end

---@param show boolean
---@param whichButton integer
function ShowCustomCampaignButton(show, whichButton) end

---@param whichButton integer
---@return boolean
function IsCustomCampaignButtonVisibile(whichButton) end

---@param mapSaveName string
---@param doCheckpointHint boolean
function SaveGameCheckPointBJ(mapSaveName, doCheckpointHint) end

---@param loadFileName string
---@param doScoreScreen boolean
function LoadGameBJ(loadFileName, doScoreScreen) end

---@param saveFileName string
---@param newLevel string
---@param doScoreScreen boolean
function SaveAndChangeLevelBJ(saveFileName, newLevel, doScoreScreen) end

---@param saveFileName string
---@param loadFileName string
---@param doScoreScreen boolean
function SaveAndLoadGameBJ(saveFileName, loadFileName, doScoreScreen) end

---@param sourceDirName string
---@param destDirName string
---@return boolean
function RenameSaveDirectoryBJ(sourceDirName, destDirName) end

---@param sourceDirName string
---@return boolean
function RemoveSaveDirectoryBJ(sourceDirName) end

---@param sourceSaveName string
---@param destSaveName string
---@return boolean
function CopySaveGameBJ(sourceSaveName, destSaveName) end

---@param whichPlayer player
---@return number
function GetPlayerStartLocationX(whichPlayer) end

---@param whichPlayer player
---@return number
function GetPlayerStartLocationY(whichPlayer) end

---@param whichPlayer player
---@return location
function GetPlayerStartLocationLoc(whichPlayer) end

---@param whichRect rect
---@return location
function GetRectCenter(whichRect) end

---@param whichPlayer player
---@param whichState playerslotstate
---@return boolean
function IsPlayerSlotState(whichPlayer, whichState) end

---@param seconds number
---@return integer
function GetFadeFromSeconds(seconds) end

---@param seconds number
---@return number
function GetFadeFromSecondsAsReal(seconds) end

---@param whichPlayer player
---@param whichPlayerState playerstate
---@param delta integer
function AdjustPlayerStateSimpleBJ(whichPlayer, whichPlayerState, delta) end

---@param delta integer
---@param whichPlayer player
---@param whichPlayerState playerstate
function AdjustPlayerStateBJ(delta, whichPlayer, whichPlayerState) end

---@param whichPlayer player
---@param whichPlayerState playerstate
---@param value integer
function SetPlayerStateBJ(whichPlayer, whichPlayerState, value) end

---@param whichPlayerFlag playerstate
---@param flag boolean
---@param whichPlayer player
function SetPlayerFlagBJ(whichPlayerFlag, flag, whichPlayer) end

---@param rate integer
---@param whichResource playerstate
---@param sourcePlayer player
---@param otherPlayer player
function SetPlayerTaxRateBJ(rate, whichResource, sourcePlayer, otherPlayer) end

---@param whichResource playerstate
---@param sourcePlayer player
---@param otherPlayer player
---@return integer
function GetPlayerTaxRateBJ(whichResource, sourcePlayer, otherPlayer) end

---@param whichPlayerFlag playerstate
---@param whichPlayer player
---@return boolean
function IsPlayerFlagSetBJ(whichPlayerFlag, whichPlayer) end

---@param delta integer
---@param whichUnit unit
function AddResourceAmountBJ(delta, whichUnit) end

---@param whichPlayer player
---@return integer
function GetConvertedPlayerId(whichPlayer) end

---@param convertedPlayerId integer
---@return player
function ConvertedPlayer(convertedPlayerId) end

---@param r rect
---@return number
function GetRectWidthBJ(r) end

---@param r rect
---@return number
function GetRectHeightBJ(r) end

---@param goldMine unit
---@param whichPlayer player
---@return unit
function BlightGoldMineForPlayerBJ(goldMine, whichPlayer) end

---@param goldMine unit
---@param whichPlayer player
---@return unit
function BlightGoldMineForPlayer(goldMine, whichPlayer) end

---@return unit
function GetLastHauntedGoldMine() end

---@param where location
---@return boolean
function IsPointBlightedBJ(where) end

function SetPlayerColorBJEnum() end

---@param whichPlayer player
---@param color playercolor
---@param changeExisting boolean
function SetPlayerColorBJ(whichPlayer, color, changeExisting) end

---@param unitId integer
---@param allowed boolean
---@param whichPlayer player
function SetPlayerUnitAvailableBJ(unitId, allowed, whichPlayer) end

function LockGameSpeedBJ() end

function UnlockGameSpeedBJ() end

---@param whichUnit unit
---@param order string
---@param targetWidget widget
---@return boolean
function IssueTargetOrderBJ(whichUnit, order, targetWidget) end

---@param whichUnit unit
---@param order string
---@param whichLocation location
---@return boolean
function IssuePointOrderLocBJ(whichUnit, order, whichLocation) end

---@param whichUnit unit
---@param order string
---@param targetWidget widget
---@return boolean
function IssueTargetDestructableOrder(whichUnit, order, targetWidget) end

---@param whichUnit unit
---@param order string
---@param targetWidget widget
---@return boolean
function IssueTargetItemOrder(whichUnit, order, targetWidget) end

---@param whichUnit unit
---@param order string
---@return boolean
function IssueImmediateOrderBJ(whichUnit, order) end

---@param whichGroup group
---@param order string
---@param targetWidget widget
---@return boolean
function GroupTargetOrderBJ(whichGroup, order, targetWidget) end

---@param whichGroup group
---@param order string
---@param whichLocation location
---@return boolean
function GroupPointOrderLocBJ(whichGroup, order, whichLocation) end

---@param whichGroup group
---@param order string
---@return boolean
function GroupImmediateOrderBJ(whichGroup, order) end

---@param whichGroup group
---@param order string
---@param targetWidget widget
---@return boolean
function GroupTargetDestructableOrder(whichGroup, order, targetWidget) end

---@param whichGroup group
---@param order string
---@param targetWidget widget
---@return boolean
function GroupTargetItemOrder(whichGroup, order, targetWidget) end

---@return destructable
function GetDyingDestructable() end

---@param whichUnit unit
---@param targPos location
function SetUnitRallyPoint(whichUnit, targPos) end

---@param whichUnit unit
---@param targUnit unit
function SetUnitRallyUnit(whichUnit, targUnit) end

---@param whichUnit unit
---@param targDest destructable
function SetUnitRallyDestructable(whichUnit, targDest) end

function SaveDyingWidget() end

---@param addBlight boolean
---@param whichPlayer player
---@param r rect
function SetBlightRectBJ(addBlight, whichPlayer, r) end

---@param addBlight boolean
---@param whichPlayer player
---@param loc location
---@param radius number
function SetBlightRadiusLocBJ(addBlight, whichPlayer, loc, radius) end

---@param abilcode integer
---@return string
function GetAbilityName(abilcode) end

function MeleeStartingVisibility() end

function MeleeStartingResources() end

---@param whichPlayer player
---@param techId integer
---@param limit integer
function ReducePlayerTechMaxAllowed(whichPlayer, techId, limit) end

function MeleeStartingHeroLimit() end

---@return boolean
function MeleeTrainedUnitIsHeroBJFilter() end

---@param whichUnit unit
function MeleeGrantItemsToHero(whichUnit) end

function MeleeGrantItemsToTrainedHero() end

function MeleeGrantItemsToHiredHero() end

function MeleeGrantHeroItems() end

function MeleeClearExcessUnit() end

---@param x number
---@param y number
---@param range number
function MeleeClearNearbyUnits(x, y, range) end

function MeleeClearExcessUnits() end

function MeleeEnumFindNearestMine() end

---@param src location
---@param range number
---@return unit
function MeleeFindNearestMine(src, range) end

---@param p player
---@param id1 integer
---@param id2 integer
---@param id3 integer
---@param id4 integer
---@param loc location
---@return unit
function MeleeRandomHeroLoc(p, id1, id2, id3, id4, loc) end

---@param src location
---@param targ location
---@param distance number
---@param deltaAngle number
---@return location
function MeleeGetProjectedLoc(src, targ, distance, deltaAngle) end

---@param val number
---@param minVal number
---@param maxVal number
---@return number
function MeleeGetNearestValueWithin(val, minVal, maxVal) end

---@param src location
---@param r rect
---@return location
function MeleeGetLocWithinRect(src, r) end

---@param whichPlayer player
---@param startLoc location
---@param doHeroes boolean
---@param doCamera boolean
---@param doPreload boolean
function MeleeStartingUnitsHuman(whichPlayer, startLoc, doHeroes, doCamera, doPreload) end

---@param whichPlayer player
---@param startLoc location
---@param doHeroes boolean
---@param doCamera boolean
---@param doPreload boolean
function MeleeStartingUnitsOrc(whichPlayer, startLoc, doHeroes, doCamera, doPreload) end

---@param whichPlayer player
---@param startLoc location
---@param doHeroes boolean
---@param doCamera boolean
---@param doPreload boolean
function MeleeStartingUnitsUndead(whichPlayer, startLoc, doHeroes, doCamera, doPreload) end

---@param whichPlayer player
---@param startLoc location
---@param doHeroes boolean
---@param doCamera boolean
---@param doPreload boolean
function MeleeStartingUnitsNightElf(whichPlayer, startLoc, doHeroes, doCamera, doPreload) end

---@param whichPlayer player
---@param startLoc location
---@param doHeroes boolean
---@param doCamera boolean
---@param doPreload boolean
function MeleeStartingUnitsUnknownRace(whichPlayer, startLoc, doHeroes, doCamera, doPreload) end

function MeleeStartingUnits() end

---@param whichRace race
---@param whichPlayer player
---@param loc location
---@param doHeroes boolean
function MeleeStartingUnitsForPlayer(whichRace, whichPlayer, loc, doHeroes) end

---@param num player
---@param s1 string
---@param s2 string
---@param s3 string
function PickMeleeAI(num, s1, s2, s3) end

function MeleeStartingAI() end

---@param targ unit
function LockGuardPosition(targ) end

---@param playerIndex integer
---@param opponentIndex integer
---@return boolean
function MeleePlayerIsOpponent(playerIndex, opponentIndex) end

---@param whichPlayer player
---@return integer
function MeleeGetAllyStructureCount(whichPlayer) end

---@param whichPlayer player
---@return integer
function MeleeGetAllyCount(whichPlayer) end

---@param whichPlayer player
---@return integer
function MeleeGetAllyKeyStructureCount(whichPlayer) end

function MeleeDoDrawEnum() end

function MeleeDoVictoryEnum() end

---@param whichPlayer player
function MeleeDoDefeat(whichPlayer) end

function MeleeDoDefeatEnum() end

---@param whichPlayer player
function MeleeDoLeave(whichPlayer) end

function MeleeRemoveObservers() end

---@return force
function MeleeCheckForVictors() end

function MeleeCheckForLosersAndVictors() end

---@param whichPlayer player
---@return string
function MeleeGetCrippledWarningMessage(whichPlayer) end

---@param whichPlayer player
---@return string
function MeleeGetCrippledTimerMessage(whichPlayer) end

---@param whichPlayer player
---@return string
function MeleeGetCrippledRevealedMessage(whichPlayer) end

---@param whichPlayer player
---@param expose boolean
function MeleeExposePlayer(whichPlayer, expose) end

function MeleeExposeAllPlayers() end

function MeleeCrippledPlayerTimeout() end

---@param whichPlayer player
---@return boolean
function MeleePlayerIsCrippled(whichPlayer) end

function MeleeCheckForCrippledPlayers() end

---@param lostUnit unit
function MeleeCheckLostUnit(lostUnit) end

---@param addedUnit unit
function MeleeCheckAddedUnit(addedUnit) end

function MeleeTriggerActionConstructCancel() end

function MeleeTriggerActionUnitDeath() end

function MeleeTriggerActionUnitConstructionStart() end

function MeleeTriggerActionPlayerDefeated() end

function MeleeTriggerActionPlayerLeft() end

function MeleeTriggerActionAllianceChange() end

function MeleeTriggerTournamentFinishSoon() end

---@param whichPlayer player
---@return boolean
function MeleeWasUserPlayer(whichPlayer) end

---@param multiplier integer
function MeleeTournamentFinishNowRuleA(multiplier) end

function MeleeTriggerTournamentFinishNow() end

function MeleeInitVictoryDefeat() end

function CheckInitPlayerSlotAvailability() end

---@param whichPlayer player
---@param control mapcontrol
function SetPlayerSlotAvailable(whichPlayer, control) end

---@param teamCount integer
function TeamInitPlayerSlots(teamCount) end

function MeleeInitPlayerSlots() end

function FFAInitPlayerSlots() end

function OneOnOneInitPlayerSlots() end

function InitGenericPlayerSlots() end

function SetDNCSoundsDawn() end

function SetDNCSoundsDusk() end

function SetDNCSoundsDay() end

function SetDNCSoundsNight() end

function InitDNCSounds() end

function InitBlizzardGlobals() end

function InitQueuedTriggers() end

function InitMapRects() end

function InitSummonableCaps() end

---@param whichItem item
function UpdateStockAvailability(whichItem) end

function UpdateEachStockBuildingEnum() end

---@param iType itemtype
---@param iLevel integer
function UpdateEachStockBuilding(iType, iLevel) end

function PerformStockUpdates() end

function StartStockUpdates() end

function RemovePurchasedItem() end

function InitNeutralBuildings() end

function MarkGameStarted() end

function DetectGameStarted() end

function InitBlizzard() end

function RandomDistReset() end

---@param inID integer
---@param inChance integer
function RandomDistAddItem(inID, inChance) end

---@return integer
function RandomDistChoose() end

---@param inUnit unit
---@param inItemID integer
---@return item
function UnitDropItem(inUnit, inItemID) end

---@param inWidget widget
---@param inItemID integer
---@return item
function WidgetDropItem(inWidget, inItemID) end

---@return boolean
function BlzIsLastInstanceObjectFunctionSuccessful() end

---@param whichAbility ability
---@param whichField abilitybooleanfield
---@param value boolean
function BlzSetAbilityBooleanFieldBJ(whichAbility, whichField, value) end

---@param whichAbility ability
---@param whichField abilityintegerfield
---@param value integer
function BlzSetAbilityIntegerFieldBJ(whichAbility, whichField, value) end

---@param whichAbility ability
---@param whichField abilityrealfield
---@param value number
function BlzSetAbilityRealFieldBJ(whichAbility, whichField, value) end

---@param whichAbility ability
---@param whichField abilitystringfield
---@param value string
function BlzSetAbilityStringFieldBJ(whichAbility, whichField, value) end

---@param whichAbility ability
---@param whichField abilitybooleanlevelfield
---@param level integer
---@param value boolean
function BlzSetAbilityBooleanLevelFieldBJ(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityintegerlevelfield
---@param level integer
---@param value integer
function BlzSetAbilityIntegerLevelFieldBJ(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityreallevelfield
---@param level integer
---@param value number
function BlzSetAbilityRealLevelFieldBJ(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilitystringlevelfield
---@param level integer
---@param value string
function BlzSetAbilityStringLevelFieldBJ(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param index integer
---@param value boolean
function BlzSetAbilityBooleanLevelArrayFieldBJ(whichAbility, whichField, level, index, value) end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param index integer
---@param value integer
function BlzSetAbilityIntegerLevelArrayFieldBJ(whichAbility, whichField, level, index, value) end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param index integer
---@param value number
function BlzSetAbilityRealLevelArrayFieldBJ(whichAbility, whichField, level, index, value) end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param index integer
---@param value string
function BlzSetAbilityStringLevelArrayFieldBJ(whichAbility, whichField, level, index, value) end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param value boolean
function BlzAddAbilityBooleanLevelArrayFieldBJ(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param value integer
function BlzAddAbilityIntegerLevelArrayFieldBJ(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param value number
function BlzAddAbilityRealLevelArrayFieldBJ(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param value string
function BlzAddAbilityStringLevelArrayFieldBJ(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param value boolean
function BlzRemoveAbilityBooleanLevelArrayFieldBJ(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param value integer
function BlzRemoveAbilityIntegerLevelArrayFieldBJ(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param value number
function BlzRemoveAbilityRealLevelArrayFieldBJ(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param value string
function BlzRemoveAbilityStringLevelArrayFieldBJ(whichAbility, whichField, level, value) end

---@param whichItem item
---@param abilCode integer
function BlzItemAddAbilityBJ(whichItem, abilCode) end

---@param whichItem item
---@param abilCode integer
function BlzItemRemoveAbilityBJ(whichItem, abilCode) end

---@param whichItem item
---@param whichField itembooleanfield
---@param value boolean
function BlzSetItemBooleanFieldBJ(whichItem, whichField, value) end

---@param whichItem item
---@param whichField itemintegerfield
---@param value integer
function BlzSetItemIntegerFieldBJ(whichItem, whichField, value) end

---@param whichItem item
---@param whichField itemrealfield
---@param value number
function BlzSetItemRealFieldBJ(whichItem, whichField, value) end

---@param whichItem item
---@param whichField itemstringfield
---@param value string
function BlzSetItemStringFieldBJ(whichItem, whichField, value) end

---@param whichUnit unit
---@param whichField unitbooleanfield
---@param value boolean
function BlzSetUnitBooleanFieldBJ(whichUnit, whichField, value) end

---@param whichUnit unit
---@param whichField unitintegerfield
---@param value integer
function BlzSetUnitIntegerFieldBJ(whichUnit, whichField, value) end

---@param whichUnit unit
---@param whichField unitrealfield
---@param value number
function BlzSetUnitRealFieldBJ(whichUnit, whichField, value) end

---@param whichUnit unit
---@param whichField unitstringfield
---@param value string
function BlzSetUnitStringFieldBJ(whichUnit, whichField, value) end

---@param whichUnit unit
---@param whichField unitweaponbooleanfield
---@param index integer
---@param value boolean
function BlzSetUnitWeaponBooleanFieldBJ(whichUnit, whichField, index, value) end

---@param whichUnit unit
---@param whichField unitweaponintegerfield
---@param index integer
---@param value integer
function BlzSetUnitWeaponIntegerFieldBJ(whichUnit, whichField, index, value) end

---@param whichUnit unit
---@param whichField unitweaponrealfield
---@param index integer
---@param value number
function BlzSetUnitWeaponRealFieldBJ(whichUnit, whichField, index, value) end

---@param whichUnit unit
---@param whichField unitweaponstringfield
---@param index integer
---@param value string
function BlzSetUnitWeaponStringFieldBJ(whichUnit, whichField, index, value) end

---@param id string
---@return integer
function FourCC(id) end