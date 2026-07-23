local SoundHandler = {}
local eventBus  = require("lib.EventBus")
local foodDB = require("lib.FoodDB")

function SoundHandler.PlaySoundForPlayer(soundPath)
    local x = GetCameraTargetPositionX()
    local y = GetCameraTargetPositionY()
    local z = GetCameraTargetPositionZ()
    
    -- Создаем 3D звук
    local sound = CreateSound(soundPath, false, false, true, 10, 10, "")
    SetSoundVolume(sound, 127)
    SetSoundPosition(sound, x, y, z)
    SetSoundDistances(sound, 0, 100)
    
    StartSound(sound)
    KillSoundWhenDone(sound)
    return sound
end

function SoundHandler.PlaySoundGlobal(soundPath)
    -- Воспроизводим звук для всех игроков сразу
    local sound = CreateSound(soundPath, false, false, false, 10, 10, "")
    SetSoundVolume(sound, 127)
    StartSound(sound)
    KillSoundWhenDone(sound)
    return sound
end

-- ============================================
-- Подписки
-- ============================================

eventBus.sub_OnFeedingAnimationStart(
    function (p, foodName)
        local sfx = foodDB.GetFoodSFXHello(foodName)
        SoundHandler.PlaySoundForPlayer(sfx)
    end
)

eventBus.sub_OnFeedingAnimationEnd(
    function (p, foodName)
        local sfx = foodDB.GetFoodSFXDeath(foodName)
        SoundHandler.PlaySoundForPlayer(sfx)
    end
)

eventBus.sub_OnPlayerFinishActionTimerTik(
    function ()
        SoundHandler.PlaySoundForPlayer(SFX_TIME_TIK)
    end
)

eventBus.sub_OnPlayerPickUpCoin(
    function (p, segment, coinValue)
        SoundHandler.PlaySoundForPlayer(SFX_COIN)
    end
)

return SoundHandler