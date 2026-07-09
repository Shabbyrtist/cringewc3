local PlayerHandler = {}
local players = {}

function PlayerHandler.GetPlayers()
    return players
end

function PlayerHandler.OnLeave(p)
    players[p].isInGame = false
    print('Player ' .. p .. ' has leaved')
end

function PlayerHandler.IsActive(p)
    return players[p].isInGame
end

function PlayerHandler.IncreasExplosionChance(p, chance)
    players[p].explosionChance = players[p].explosionChance + chance
end

function PlayerHandler.AddVP(p, vp)
    players[p].vp = players[p].vp + vp
end

function PlayerHandler.SetIsDoneWithAction(p, b)
    players[p].isDoneWithAction = b
end

function PlayerHandler.GetIsDoneWithAction(p)
    return players[p].isDoneWithAction
end

function PlayerHandler.SetCurrentTrackSegment(p, v)
    players[p].currentTrackSegment = v
end

function PlayerHandler.GetCurrentTrackSegment(p)
    return players[p].currentTrackSegment
end

function PlayerHandler.SetExplosionChance(p, v)
    players[p].explosionChance = v
end

function PlayerHandler.GetExplosionChance(p)
    return players[p].explosionChance
end

function PlayerHandler.SetDragonUnit(p, dragon)
    players[p].dragonUnit = dragon
end

function PlayerHandler.GetDragonUnit(p)
    return players[p].dragonUnit
end

function PlayerHandler.SetHeroUnit(p, hero)
    players[p].heroUnit = hero
end

function PlayerHandler.GetHeroUnit(p)
    return players[p].heroUnit
end

function PlayerHandler.GetExplosionChanceTrashhold(p)
    return players[p].explosionChanceTrashhold
end

function PlayerHandler.Init()
    for i = 0, GetBJMaxPlayers() - 1 do

        local p = Player(i)
        
        --Если слот игрока для человека и он в игре
        if GetPlayerController(p) == MAP_CONTROL_USER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING then
            
            --создаем триггер на его лив
            local trig = CreateTrigger()

            TriggerRegisterPlayerEvent(trig, p, EVENT_PLAYER_LEAVE)
            TriggerAddAction(trig, function()
                PlayerHandler.onLeave(GetTriggerPlayer())
            end)

            players[p] = {
                isInGame = true,

                dragonUnit = nil,
                heroUnit = nil,
                trackStartRegion = nil,

                foodBag = {},
                bufferFoodBag = {},

                isDoneWithAction = false,
                currentTrackSegment = 1,

                explosionChance = 0,
                explosionChanceTrashhold = 15,
                vp = 0
            }
            
        end
    end
end

return PlayerHandler
