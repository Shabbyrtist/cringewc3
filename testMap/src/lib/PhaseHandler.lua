local PhaseHandler = {}

-- Подключаем состояния
local GameStart = require("game logic.GameStartPhase")
local Active = require("game logic.ActivePhase")
local Shop = require("game logic.ShoppingPhase")
local GameEnd = require("game logic.GameEndPhase")

local states = {
    { name = "GameStart", module = GameStart},
    { name = "Active", module = Active},
    { name = "Shopping", module = Shop},
    { name = "GameEnd", module = GameEnd}
    }

local currentStateIndex = 1
local currentRound = 1

function PhaseHandler.GetCurrentState()
    return states[currentStateIndex].name
end

function PhaseHandler.GetCurrentRound()
    return currentRound
end

function PhaseHandler.GetStateIndex(stateName)
    for i, state in ipairs(states) do
        if state.name == stateName then
            return  i
        end
    end
end

function PhaseHandler.NextState()
    states[currentStateIndex].module.EndPhase()
    currentStateIndex = currentStateIndex + 1

    if currentRound < SETTINGS_ROUND_NUMBER then
        if currentStateIndex == #states then
            currentStateIndex = PhaseHandler.GetStateIndex("Active")
            currentRound = currentRound + 1
        end
    else 
        currentStateIndex = #states
    end

    states[currentStateIndex].module.StartPhase()
end

function PhaseHandler.Init() 
    
    states[currentStateIndex].module.StartPhase()

end

return PhaseHandler
