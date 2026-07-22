local Active = {}

local playerHandler         = require("lib.PlayerHandler")
local eventBus  = require("lib.EventBus")

function Active.StartPhase()
    local phaseHandler = require("lib.PhaseHandler")

    --@debug@
    print("Активная фаза - Начало")
    print("Текущий раунд " .. phaseHandler.GetCurrentRound())
    --@debug-end@

    eventBus.fire(TrigDB.OnStartOfActionPhase, phaseHandler.GetCurrentRound)
    for p, _ in pairs(playerHandler.GetPlayers()) do
        eventBus.fire(TrigDB.OnPlayerStartActionPhase, p, phaseHandler.GetCurrentRound)
    end
    
end

function Active.EndPhase()
    local phaseHandler = require("lib.PhaseHandler")
    
    --@debug@
    print("Активная фаза - Конец")
    print("Текущий раунд " .. phaseHandler.GetCurrentRound())
    --@debug-end@

    eventBus.fire(TrigDB.OnEndOfActionPhase, phaseHandler.GetCurrentRound)
    for p, _ in pairs(playerHandler.GetPlayers()) do
        eventBus.fire(TrigDB.OnPlayerEndActionPhase, p, phaseHandler.GetCurrentRound)
    end
end

return Active