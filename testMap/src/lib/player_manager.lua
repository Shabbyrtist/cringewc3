PlayerManager = {}
local players = {}

function PlayerManager.onLeave(p)
    players[id].isInGame = false
    print('Player ' .. p .. 'has leaved')
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
    
            if GetPlayerController(p) ~= MAP_CONTROL_USER or GetPlayerSlotState(p) ~= PLAYER_SLOT_STATE_PLAYING then
                return
            end

            players[i] = {
                explosionChance = 0,
                vp = 0,
                isInGame = true
            }

            print(players[i].isInGame)

        end
    end)

    trig = CreateTrigger()
    for i = 0, GetBJMaxPlayers() - 1 do
        TriggerRegisterPlayerEvent(trig, p, EVENT_PLAYER_LEAVE)
    end

    TriggerAddAction(trig, function()
        local p = GetTriggerPlayer()
        PlayerManager.onLeave(p)
    end)

end

PlayerManager.init()
