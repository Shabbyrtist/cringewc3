local SoundHandler = {}

function SoundHandler.PlaySoundForPlayer(p, soundPath)
    -- Создаем звук
    local sound = CreateSound(soundPath, false, false, false, 10, 10, "")
    
    -- Устанавливаем громкость (0-127)
    SetSoundVolume(sound, 127)
    
    -- Устанавливаем, что звук воспроизводится для игрока
    SetSoundPosition(sound, 0, 0, 0)
    
    -- Запускаем звук
    StartSound(sound)
    
    -- Уничтожаем после воспроизведения
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

return SoundHandler