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
                explosionChance = 0,
                vp = 0,
                dragonUnit = nil,
                trackStartRegion = nil,
                foodBag = {}
            }
            
        end
    end
end

return PlayerHandler
