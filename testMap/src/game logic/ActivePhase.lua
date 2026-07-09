local Active = {}

local playerHandler = require("lib.PlayerHandler")
local playerDragonHandler = require("lib.PlayerDragonHandler")
local soundHandler = require("lib.SoundHandler")
local trackHandler = require("lib.TrackHandler")
local foodDB = require("lib.FoodDB")
local bag = require("lib.Bag")

local function CheckIsAllPlayersDone()
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

local function PlayerExplodedEffect(p)
    local pName = GetPlayerName(p)
    local dragon = playerHandler.GetDragonUnit(p)
    
    DestroyEffect(AddSpecialEffect(MDL_MEAT_EXPLOSION, GetUnitX(dragon), GetUnitY(dragon)))
end

function Active.PlayerAction(p, playerAction)
    local pName = GetPlayerName(p)

    if playerAction == "bag" then
        
        if not bag.BufferIsEmpty(p) then
            PlayerBagPullAction(p)
            return
        else 
            print("Игрок " .. pName .. ": мешок пуст, пропускаем")
            Active.PlayerAction(p, "stop")
            return
        end

    end

    if playerAction == "stop" then
        playerHandler.SetIsDoneWithAction(p, true)
        CheckIsAllPlayersDone()
        return
    end

    if playerAction == "exploded" then
        PlayerExplodedEffect(p)
        Active.PlayerAction(p, "stop")
        return
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