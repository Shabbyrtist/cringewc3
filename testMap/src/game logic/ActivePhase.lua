local Active = {}

function Active.StartPhase()
    print("Активная фаза - Начало")
    
    local phaseHandler = require("lib.PhaseHandler")
    local playerHandler = require("lib.PlayerHandler")
    local playerDragonHandler = require("lib.PlayerDragonHandler")
    local players = playerHandler.GetPlayers()

    print("Текущий раунд " .. phaseHandler.GetCurrentRound())

    for p, data in pairs(players) do
        playerDragonHandler.MoveDragonForPlayer(p, 2)
    end
    --phaseHandler.NextState()
end

function Active.EndPhase()
    print("Активная фаза - Конец")
end

return Active