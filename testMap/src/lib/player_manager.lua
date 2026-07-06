PlayerManager = {}
local players = {}

function PlayerManager.onLeave(p)
    players[id].isInGame = false
    print('Player ' .. p .. ' has leaved')
end

function PlayerManager.isActive(p)
    return players[p].isInGame
end

function PlayerManager.increasExplosionChance(p, chance)
    players[p].explosionChance = players[p].explosionChance + chance
end

function PlayerManager.addVP(p, vp)
    players[p].vp = players[p].vp + vp
end

function PlayerManager.init()

    local trig = CreateTrigger()

    TriggerRegisterTimerEvent(trig, 0.01, false)
    TriggerAddAction(trig, function()

        for i = 0, GetBJMaxPlayers() - 1 do

            local p = Player(i)
            
            --Если слот игрока для человека и он в игре
            if GetPlayerController(p) == MAP_CONTROL_USER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING then
                
                --создаем триггер на его лив
                trig = CreateTrigger()

                TriggerRegisterPlayerEvent(trig, p, EVENT_PLAYER_LEAVE)
                TriggerAddAction(trig, function()
                    PlayerManager.onLeave(GetTriggerPlayer())
                end)

                players[i] = {
                    explosionChance = 0,
                    vp = 0,
                    isInGame = true
                }
                
            end
        end
    end)
end

PlayerManager.init()
