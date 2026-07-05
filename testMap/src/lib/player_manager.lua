PlayerManager = {}
PlayerManager.players = {}

function PlayerManager.onLeave(p)
    local id = GetPlayerId(p)
    
    if M[id] then
        PlayerManager.players[id].IsInGame = false
        print('Player ' .. p .. 'has leaved')
    end
end

function PlayerManager.isActive(p)
    local data = PlayerManager.players[GetPlayerId(p)]
    return data and data.active
end

function PlayerManager.hasChosen(p)
    local data = PlayerManager.players[GetPlayerId(p)]
    return data and data.choiceMade
end

function PlayerManager.setChosen(p, choice)
    PlayerManager.players[GetPlayerId(p)].choice = choice
end

function PlayerManager.increasChance(p, val)
    PlayerManager.players[GetPlayerId(p)].points = PlayerManager.players[GetPlayerId(p)].points + val
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

            PlayerManager.players[i] = {
                chanceExpl = 0,
                vp = 0,
                IsInGame = true
            }

            print(PlayerManager.players[i].IsInGame)

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
