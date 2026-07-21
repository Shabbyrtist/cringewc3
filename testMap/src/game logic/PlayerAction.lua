local PlayerAction = {}

local playerHandler         = require("lib.PlayerHandler")
local playerDragonHandler   = require("lib.PlayerDragonHandler")
local soundHandler          = require("lib.SoundHandler")
local trackHandler          = require("lib.TrackHandler")
local foodDB                = require("lib.FoodDB")
local bag                   = require("lib.Bag")
local takeFood              = require("ui.TakeFood")


local function CheckIsAllPlayersDone()
    local phaseHandler = require("lib.PhaseHandler")
    
    --timer for test skip/cancel button
    local testTimer = CreateTimer()

    TimerStart(testTimer, 2, false, 
    function ()
        DestroyTimer(testTimer)
        for p, _ in pairs(playerHandler.GetPlayers()) do
            if not playerHandler.GetIsDoneWithAction(p) then
                return
            end
        end

        phaseHandler.NextState()
    end)

end

function PlayerAction.FinishPlayerAction(p)
    playerHandler.SetIsDoneWithAction(p, true)
    CheckIsAllPlayersDone()
end


local function PlayerExplodedEffect(p, onComplete)
    local dragon = playerHandler.GetDragonUnit(p)
    
    DestroyEffect(AddSpecialEffect(MDL_MEATEXPLOSION, GetUnitX(dragon), GetUnitY(dragon)))

    local timer = CreateTimer()
    
    TimerStart(timer, 1, false, function()
        DestroyTimer(timer)

        if onComplete then
            onComplete()
        end
    end)
end

function PlayerAction.CheckExplosion(p)
    local chance = 101--GetRandomInt(1, 100)
    local playerExplosionChance = playerHandler.GetExplosionChance(p)
    local playerExplosionChanceTrashhold = playerHandler.GetExplosionChanceTrashhold(p)

    --@debug@
    print("Выпашее значение: " .. chance .. "; Шанс взрыва: " .. playerHandler.GetExplosionChance(p))
    --@debug-end@

    return (chance < playerExplosionChance) and (playerExplosionChance > playerExplosionChanceTrashhold)
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
    
    TimerStart(timer, 0.03, true,
        function()
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
    )
end


function PlayerAction.PullFromBag(p)
    if playerHandler.GetIsDoneWithAction(p) or bag.BufferCount(p) == 0 then
        PlayerAction.FinishPlayerAction(p)
        return false
    end

    --local pName = GetPlayerName(p)
    local foodName = bag.BufferGetRandom(p)
    local foodExplosionChance = foodDB.GetFoodExplosionChance(foodName)
    local foodSteps = foodDB.GetFoodStepsForPlayer(foodName, p)
    local foodHelloFX = foodDB.GetFoodSFX(foodName, "hello")
    local foodDeathSFX = foodDB.GetFoodSFX(foodName, "death")
    local currentTrackSegment = playerHandler.GetCurrentTrackSegment(p)
    local newExplosionChance = playerHandler.GetExplosionChance(p) + foodExplosionChance

    playerHandler.SetExplosionChance(p, newExplosionChance)

    soundHandler.PlaySoundForPlayer(p, foodHelloFX)

    local exploded = PlayerAction.CheckExplosion(p)
    
    PlayerHeroFoodAnimationStart(p, foodName,
        function()
            playerDragonHandler.MovePlayerDragon(p, foodSteps,
            function()
                local newTrackSegment = currentTrackSegment + foodSteps

                playerHandler.SetCurrentTrackSegment(p, newTrackSegment)
                trackHandler.SetPlayerTrackSegmentFoodName(p, newTrackSegment, foodName)

                    --Еда долетела взрываем
                if exploded then
                    PlayerExplodedEffect(p,
                        function()
                            PlayerAction.FinishPlayerAction(p)
                        end
                    )
                    return
                end

                local canContinue = bag.BufferCount(p) > 0 and not playerHandler.GetIsDoneWithAction(p)

                if not canContinue then
                    PlayerAction.FinishPlayerAction(p)
                end
                
                takeFood.SetEnabled(p, canContinue)
                                    
                --@debug@
                print("bag count:", bag.BufferCount(p),
                    "done:", tostring(playerHandler.GetIsDoneWithAction(p)),
                    "canContinue:",tostring(canContinue)
                )
                 --@debug-end@

            end
            )
            soundHandler.PlaySoundForPlayer(p, foodDeathSFX)
        end
    )

    return true
end

return PlayerAction