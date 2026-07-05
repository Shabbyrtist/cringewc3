M = {}
M.players = {}

function M.init(p)
    local id = GetPlayerId(p)
    
    if GetPlayerController(p) ~= MAP_CONTROL_USER or GetPlayerSlotState(p) ~= PLAYER_SLOT_STATE_PLAYING then
        return
    end

    M.players[id] = {
        active = true,
        chanceExpl = 0,
        choiceMade = false,
        points = 0
    }
end

function M.onLeave(p)
    local id = GetPlayerId(p)
    
    if M[id] then
        M.players[id] = nil
    end
end

function M.isActive(p)
    local data = M.players[GetPlayerId(p)]
    --ToDo: How to work temporary shutdown? Mb need to change logic 
    return data and data.active
end

function M.hasChosen(p)
    local data = M.players[GetPlayerId(p)]

    return data and data.choiceMade
end

function M.setChosen(p, choice)
    M.players[GetPlayerId(p)].choice = choice
end

function M.increasChance(p, val)
    M.players[GetPlayerId(p)] += val