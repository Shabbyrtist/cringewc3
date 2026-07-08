local Active = {}

local playerHandler = require("lib.PlayerHandler")
local playerDragonHandler = require("lib.PlayerDragonHandler")
local foodDB = require("lib.FoodDB")
local bag = require("lib.Bag")

function Active.PlayerChooseActionWithTheBag(p, playerAction)

    local pName = GetPlayerName(p)

    if playerAction == "bag" then
        
        if not bag.IsEmpty(p) then
            local food = bag.GetRandom(p)

            --@debug@
            print("Игрок " .. pName .. ": вытащена еда " ..
                "которая повысила % взрыва на " ..foodDB.GetFoodExplosionChance(food) ..
                ", шагов: " .. foodDB.GetFoodSteps(food))
            --@debug-end@

            playerDragonHandler.MoveDragonForPlayer(p, foodDB.GetFoodSteps(food))
        else 
            print("Игрок " .. pName .. ": мешок пуст, пропускаем")
            playerAction = "stop"
        end

    end

    if playerAction == "stop" then
        playerHandler.SetIsDoneWithAction(p, true)
        Active.PlayersDoneCheck()
    end
end

function Active.PlayersDoneCheck()
    local phaseHandler = require("lib.PhaseHandler")

    for p, data in pairs(playerHandler.GetPlayers()) do
        if not playerHandler.GetIsDoneWithAction(p) then
            return false
        end
    end
    phaseHandler.NextState()
    return true
end

function Active.StartPhase()
    local phaseHandler = require("lib.PhaseHandler")

    --@debug@
    print("Активная фаза - Начало")
    print("Текущий раунд " .. phaseHandler.GetCurrentRound())
    --@debug-end@

    for p, data in pairs(playerHandler.GetPlayers()) do

        local trig = CreateTrigger()
        TriggerRegisterPlayerChatEvent(trig, p, "", false)
        TriggerAddAction(trig, function()
            local message = GetEventPlayerChatString()
            
            if message == "bag" or message == "stop" then
                Active.PlayerChooseActionWithTheBag(p, message)
            end
        end)
        
    end
end

function Active.EndPhase()
    print("Активная фаза - Конец")
end

return Active