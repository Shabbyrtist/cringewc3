local Shoping = {}

function Shoping.StartPhase()
    print("Шопинг - Начало")
    local phaseHandler = require("lib.PhaseHandler")
    phaseHandler.NextState()
end

function Shoping.EndPhase()
    print("Шопинг - Конец")
end

return Shoping