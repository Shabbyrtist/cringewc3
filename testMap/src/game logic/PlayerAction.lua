local PlayerAction = {}

local playerHandler         = require("lib.PlayerHandler")
local foodDB                = require("lib.FoodDB")
local bag                   = require("lib.Bag")
local eventBus              = require("lib.EventBus")

function PlayerAction.CheckExplosion(p)
    local chance = GetRandomInt(1, 100)
    local playerExplosionChance = playerHandler.GetExplosionChance(p)
    local playerExplosionChanceTrashhold = playerHandler.GetExplosionChanceTrashhold(p)

    --@debug@
    print("Выпашее значение: " .. chance .. "; Шанс взрыва: " .. playerHandler.GetExplosionChance(p))
    --@debug-end@

    return (chance < playerExplosionChance) and (playerExplosionChance > playerExplosionChanceTrashhold)
end

local function PlayerHeroFeedingAnimation(p, foodName)
    
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

    local currentTime = 0
    local heightMultiplier = 4
    local arcHeight = math.max(50, distance * heightMultiplier / 8)

    local timer = CreateTimer()
    
    TimerStart(timer, 0.03, true,
        function()
            currentTime = currentTime + 0.03

            if currentTime >= time then
                eventBus.fire(TrigDB.OnFeedingAnimationEnd, p, foodName)
                SetUnitAnimation(hero, 'stand')
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
    )
end

function PlayerAction.PullFromBag(p)

    if playerHandler.GetIsDoneWithAction(p) or bag.BufferCount(p) == 0 then
        eventBus.fire(TrigDB.OnPlayerFinishActionPhase, p)
        return false
    end

    eventBus.fire(TrigDB.OnPullFromBag, p)

    local foodName = bag.BufferGetRandom(p)
    local foodExplosionChance = foodDB.GetFoodExplosionChance(foodName)
    local newExplosionChance = playerHandler.GetExplosionChance(p) + foodExplosionChance

    local explosionSub = eventBus.sub_OnPlayerExploded(
        function (p)
            local dragon = playerHandler.GetDragonUnit(p)
            DestroyEffect(AddSpecialEffect(MDL_MEATEXPLOSION, GetUnitX(dragon), GetUnitY(dragon)))
        end
    )
    
    eventBus.once_OnDragonMovementEnd(
        function (p, foodName, currentTrackSegment)
            if PlayerAction.CheckExplosion(p) then
                eventBus.fire(TrigDB.OnPlayerExploded, p)
            else
                local canContinue = bag.BufferCount(p) > 0 and not playerHandler.GetIsDoneWithAction(p)
                if not canContinue then
                    eventBus.fire(TrigDB.OnPlayerFinishActionPhase, p)
                else
                    eventBus.fire(TrigDB.OnPullFromBagEnd, p)
                end
            end
            eventBus.unsubscribe(TrigDB.OnPlayerExploded, explosionSub)
        end
    )
    
    eventBus.fire(TrigDB.OnFeedingAnimationStart, p, foodName)
    playerHandler.SetExplosionChance(p, newExplosionChance)
    PlayerHeroFeedingAnimation(p, foodName)
end

return PlayerAction