local PlayerHandler = {}
local players = {}

local eventBus  = require("lib.EventBus")

function PlayerHandler.GetPlayers()
    return players
end

function PlayerHandler.OnLeave(p)
    players[p].isInGame = false
    print('Player ' .. GetPlayerName(p) .. ' has leaved')
end

function PlayerHandler.IsActive(p)
    return players[p].isInGame
end

function PlayerHandler.IncreasExplosionChance(p, chance)
    players[p].explosionChance = players[p].explosionChance + chance
end

function PlayerHandler.GetVP(p)
    return players[p].vp
end

function PlayerHandler.AddVP(p, vp)
    players[p].vp = players[p].vp + vp
end

function PlayerHandler.GetGold(p)
    return players[p].gold
end

function PlayerHandler.AddGold(p, v)
    players[p].gold = players[p].gold + v
end

function PlayerHandler.SetIsDoneWithAction(p, b)
    players[p].isDoneWithAction = b
end

function PlayerHandler.GetIsDoneWithAction(p)
    return players[p].isDoneWithAction
end

function PlayerHandler.SetIsExploded(p, b)
    players[p].isExploded = b
end

function PlayerHandler.GetIsExploded(p)
    return players[p].isExploded
end

function PlayerHandler.IsAllPlayersDoneWithAction()
    for p, _ in pairs(PlayerHandler.GetPlayers()) do
        if not PlayerHandler.GetIsDoneWithAction(p) then
            return false
        end
    end
    return true
end

function PlayerHandler.GetNumberOfPlayerInAction()
    local n = 0
    for p, _ in pairs(PlayerHandler.GetPlayers()) do
        if PlayerHandler.GetIsDoneWithAction(p) then
            n = n + 1
        end
    end
    return n
end

function PlayerHandler.SetCurrentTrackSegment(p, v)
    players[p].currentTrackSegment = v
end

function PlayerHandler.GetCurrentTrackSegment(p)
    return players[p].currentTrackSegment
end

function PlayerHandler.SetExplosionChance(p, v)
    players[p].explosionChance = v
end

function PlayerHandler.GetExplosionChance(p)
    return players[p].explosionChance
end

function PlayerHandler.SetDragonUnit(p, dragon)
    players[p].dragonUnit = dragon
end

function PlayerHandler.GetDragonUnit(p)
    return players[p].dragonUnit
end

function PlayerHandler.SetHeroUnit(p, hero)
    players[p].heroUnit = hero
end

function PlayerHandler.GetHeroUnit(p)
    return players[p].heroUnit
end

function PlayerHandler.GetExplosionChanceTrashhold(p)
    return players[p].explosionChanceTrashhold
end

function PlayerHandler.Init()
    for i = 0, GetBJMaxPlayers() - 1 do

        local p = Player(i)
        
        --Если слот игрока для человека и он в игре
        if GetPlayerController(p) == MAP_CONTROL_USER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING then
            
            --создаем триггер на его лив
            local trig = CreateTrigger()

            TriggerRegisterPlayerEvent(trig, p, EVENT_PLAYER_LEAVE)
            TriggerAddAction(trig, function()
                PlayerHandler.OnLeave(GetTriggerPlayer())
            end)

            players[p] = {
                isInGame = true,

                dragonUnit = nil,
                heroUnit = nil,
                trackStartRegion = nil,

                foodBag = {},
                bufferFoodBag = {},

                isDoneWithAction = false,
                isExploded = false,
                currentTrackSegment = 0,

                explosionChance = 0,
                explosionChanceTrashhold = 15,

                vp = 0,
                gold = 0
            }
            
        end
    end
end

-- ============================================
-- Подписки
-- ============================================

eventBus.sub_OnPlayerStartActionPhase(
    function (p)
        PlayerHandler.SetExplosionChance(p, 0)
        PlayerHandler.SetIsDoneWithAction(p, false)
        PlayerHandler.SetIsExploded(p, false)
    end
)

eventBus.sub_OnPlayerExploded(
    function (p)
        PlayerHandler.SetIsExploded(p, true)
    end
)

eventBus.sub_OnPlayerFinishActionPhase(
    function (p)
        local t = CreateTimer()
        local tiks = 3
        local isExploded = PlayerHandler.GetIsExploded(p)
        PlayerHandler.SetIsDoneWithAction(p, true)

        TimerStart(t, 1., true,
            function()
                if (tiks > 0 and not isExploded) then
                    if PlayerHandler.GetIsDoneWithAction(p) then
                        eventBus.fire(TrigDB.OnPlayerFinishActionTimerTik, p, tiks)
                    end
                    tiks = tiks - 1
                else
                    DestroyTimer(t)
                    local phaseHandler = require("lib.PhaseHandler")
                    if PlayerHandler.IsAllPlayersDoneWithAction() then
                        phaseHandler.NextState()
                    end
                end
            end
        )
    end
)

eventBus.sub_OnPlayerEndActionPhase(
    function (p, currentRound)
        local vp = PlayerHandler.GetCurrentTrackSegment(p)
        PlayerHandler.AddVP(p, vp)
    end
)

eventBus.sub_OnDragonMovementEnd(
    function (p, foodName, currentSegmentIndex)
        PlayerHandler.SetCurrentTrackSegment(p, currentSegmentIndex)
    end
)

return PlayerHandler
