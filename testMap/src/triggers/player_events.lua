M = {}

function M.init(pm, ui)
    local initTrig = CreateTrigger()

    TriggerRegisterTimerEvent(initTrig, 0.01, false)
    TriggerAddAction(initTrig, function()
        for i = 0, GetBJMaxPlayers() - 1 do
            pm.init(Player(i))
        end
    end)

    local leaveTrig = CreateTrigger()
    for i = 0, GetBJMaxPlayers() - 1 do
        TriggerRegisterPlayerEvent(leaveTrig, Player(i), EVENT_PLAYER_LEAVE)
    end
    TriggerAddAction(leaveTrig, function()
        local p = GetTriggerPlayer()
        pm.onLeave(p)
    end)
end
