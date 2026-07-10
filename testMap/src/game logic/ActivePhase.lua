local Active = {}

local playerHandler         = require("lib.PlayerHandler")
local playerDragonHandler   = require("lib.PlayerDragonHandler")
local soundHandler          = require("lib.SoundHandler")
local trackHandler          = require("lib.TrackHandler")
local foodDB                = require("lib.FoodDB")
local bag                   = require("lib.Bag")

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

local function EndOfDargonMovement(p, callbackDoesntExplode)
    local chance = GetRandomInt(1, 100)
    local playerExplosionChance = playerHandler.GetExplosionChance(p)
    local playerExplosionChanceTrashhold = playerHandler.GetExplosionChanceTrashhold(p)

    isExploded = (chance < playerExplosionChance) and (playerExplosionChance > playerExplosionChanceTrashhold)

    --@debug@
    print("Выпашее значение: " .. chance .. "; Шанс взрыва: " .. playerHandler.GetExplosionChance(p))
    --@debug-end@

    if isExploded then
        Active.PlayerAction(p, "exploded")
    else
        callbackDoesntExplode()
    end
end

local function PlayerExplodedEffect(p)
    local pName = GetPlayerName(p)
    local dragon = playerHandler.GetDragonUnit(p)
    
    DestroyEffect(AddSpecialEffect(MDL_MEATEXPLOSION, GetUnitX(dragon), GetUnitY(dragon)))

    local timer = CreateTimer()
    local function DelayEffect()
        Active.PlayerAction(p, "stop")
        DestroyTimer(timer)
    end
    
    TimerStart(timer, 1, false, function()
        DelayEffect()
    end)
end

local function PlayerHeroFoodAnimationStart(p, foodName, callbackEnd)

    local hero = playerHandler.GetHeroUnit(p)
    local eff = AddSpecialEffect(MDL_MEATMISSILE, GetUnitX(hero), GetUnitY(hero))

    SetUnitAnimation(hero, 'attack')
    BlzSetSpecialEffectScale(eff, 1.5)

    local time = 1.5
    local x = BlzGetLocalSpecialEffectX(eff)
    local y = BlzGetLocalSpecialEffectY(eff)
    local z = BlzGetLocalSpecialEffectZ(eff)
    local dragon = playerHandler.GetDragonUnit(p)

    local targetX = GetUnitX(dragon)
    local targetY = GetUnitY(dragon)
    local targetZ = 0

    local dx = targetX - x
    local dy = targetY - y
    local dz = targetZ - z
    local distance = math.sqrt(dx*dx + dy*dy)
    local speed = math.sqrt(dx*dx + dy*dy + dz*dz) / time

    local currentTime = 0
    local heightMultiplier = 4
    local arcHeight = math.max(50, distance * heightMultiplier / 8)

    local timer = CreateTimer()
    
    local function MoveEffect()
        currentTime = currentTime + 0.03
        if currentTime >= time then
            callbackEnd()
            DestroyTimer(timer)
            DestroyEffect(eff)
            return
        end
        local t = currentTime / time
        local currentX = x + dx * t
        local currentY = y + dy * t
        local currentZ = z + dz * t + arcHeight * 4 * t * (1 - t)

        BlzSetSpecialEffectPosition(eff, currentX, currentY, currentZ)
    end
    
    TimerStart(timer, 0.03, true, function()
        MoveEffect()
    end)
end

local function PlayerBagPullAction(p)
    local pName = GetPlayerName(p)
    local foodName = bag.BufferGetRandom(p)
    local foodExplosionChance = foodDB.GetFoodExplosionChance(foodName)
    local foodSteps = foodDB.GetFoodStepsForPlayer(foodName, p)
    local foodHelloFX = foodDB.GetFoodSFX(foodName, "hello")
    local foodDeathSFX = foodDB.GetFoodSFX(foodName, "death")
    local currentPlayerTrackSegment = playerHandler.GetCurrentTrackSegment(p)

    trackHandler.SetPlayerTrackSegmentFoodName(p, currentPlayerTrackSegment, foodName)

    --@debug@
    print(pName .. ": вытащена еда " .. ". Шанс взрыва повышен на " .. foodExplosionChance .. "%, сделано шагов: " .. foodSteps)
    --@debug-end@
    
    local newExplosionChance = playerHandler.GetExplosionChance(p) + foodExplosionChance
    playerHandler.SetExplosionChance(p, newExplosionChance)

    soundHandler.PlaySoundForPlayer(p, foodHelloFX)
    PlayerHeroFoodAnimationStart(p, foodName, function()
        playerDragonHandler.MovePlayerDragon(p, foodSteps, function()
            EndOfDargonMovement(p,function()
                playerHandler.SetCurrentTrackSegment(p, currentPlayerTrackSegment + foodSteps)
            end)
        end)
        soundHandler.PlaySoundForPlayer(p, foodDeathSFX)
    end)
end

function Active.PlayerAction(p, playerAction)
    local pName = GetPlayerName(p)

    if playerAction == "bag" then
        
        if not bag.BufferIsEmpty(p) then
            PlayerBagPullAction(p)
            return
        else 
            print("Игрок " .. pName .. ": мешок пуст, пропускаем")
            PlayerAction(p, "stop")
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