local Shoping = {}

function Shoping.StartPhase()
    print("Шопинг - Начало")
    PhaseHandler.NextState()
end

function Shoping.EndPhase()
    print("Шопинг - Конец")
end

return Shoping