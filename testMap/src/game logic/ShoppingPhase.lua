local Shoping = {}

function Shoping.StartPhase()
    print("Шопинг - Начало")
    local phaseHandler = require("lib.PhaseHandler")

    local timer = CreateTimer()

    TimerStart(timer, 3, false, function()
        phaseHandler.NextState()
        DestroyTimer(timer)
    end)

end

function Shoping.EndPhase()
    print("Шопинг - Конец")
end

return Shoping