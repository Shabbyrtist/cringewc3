local Active = {}

function Active.StartPhase()
    print("Активная фаза - Начало")
    print("Текущий раунд " .. PhaseHandler.GetCurrentRound())
    PhaseHandler.NextState()
end

function Active.EndPhase()
    print("Активная фаза - Конец")
end

return Active