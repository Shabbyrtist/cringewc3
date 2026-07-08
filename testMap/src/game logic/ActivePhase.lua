local Active = {}

local playerHandler = require("lib.PlayerHandler")
local playerDragonHandler = require("lib.PlayerDragonHandler")
local soundHandler = require("lib.SoundHandler")
local trackHandler = require("lib.TrackHandler")
local foodDB = require("lib.FoodDB")
local bag = require("lib.Bag")

local function PlayersDoneCheck()
    local phaseHandler = require("lib.PhaseHandler")

    for p, data in pairs(playerHandler.GetPlayers()) do
        if not playerHandler.GetIsDoneWithAction(p) then
            return false
        end
    end
    phaseHandler.NextState()
    return true
end

local function PlayerBagPullAction(p)
    local pName = GetPlayerName(p)
    local food = bag.BufferGetRandom(p)
    local dragon = playerHandler.GetDragonUnit(p)

    --@debug@
    print("Игрок " .. pName .. ": вытащена еда " ..
        "которая повысила % взрыва на " ..foodDB.GetFoodExplosionChance(food) ..
        ", шагов: " .. foodDB.GetFoodSteps(food))
    --@debug-end@

    playerHandler.SetExplosionChance(p, playerHandler.GetExplosionChance(p) + foodDB.GetFoodExplosionChance(food))
    playerDragonHandler.MovePlayerDragon(p, foodDB.GetFoodSteps(food))
    soundHandler.PlaySoundGlobal(foodDB.GetFoodSFX(food, "death"))
end

function Active.PlayerAction(p, playerAction)
    local pName = GetPlayerName(p)

    if playerAction == "bag" then
        
        if not bag.BufferIsEmpty(p) then
            PlayerBagPullAction(p)
        else 
            print("Игрок " .. pName .. ": мешок пуст, пропускаем")
            playerAction = "stop"
        end

    end

    if playerAction == "stop" then
        playerHandler.SetIsDoneWithAction(p, true)
        PlayersDoneCheck()
    end
end

function Active.StartPhase()
    local phaseHandler = require("lib.PhaseHandler")

    --@debug@
    print("Активная фаза - Начало")
    print("Текущий раунд " .. phaseHandler.GetCurrentRound())
    --@debug-end@

    for p, data in pairs(playerHandler.GetPlayers()) do

        bag.RefreshFoodBag(p)
        playerHandler.SetExplosionChance(p, 0)
        playerDragonHandler.ResetPosition(p)
        
        if (phaseHandler.GetCurrentRound() == 1) then
            local trig = CreateTrigger()
            TriggerRegisterPlayerChatEvent(trig, p, "", false)
            TriggerAddAction(trig, function()
                local message = GetEventPlayerChatString()
                
                if message == "bag" or message == "stop" then
                    Active.PlayerAction(p, message)
                end
            end)
        end 
        
    end
end

function Active.EndPhase()
    print("Активная фаза - Конец")
end

return Active