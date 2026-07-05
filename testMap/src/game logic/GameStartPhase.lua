local GameStart = {}

function GameStart.StartPhase()
    print("Старт игры - Начало")
    PhaseHandler.NextState()
end

function GameStart.EndPhase()
    print("Старт игры - Конец")
end

return GameStart