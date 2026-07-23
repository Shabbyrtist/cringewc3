local TrackHandler = {}
local track = {}

local playerHandler = require("lib.PlayerHandler")
local foodDB = require("lib.FoodDB")
local eventBus  = require("lib.EventBus")

function TrackHandler.GetPlayerTrackX(p)
    return track[p].x
end

function TrackHandler.GetPlayerTrackSegmentY(p, i)
    return track[p].segments[i].y
end

function TrackHandler.SetPlayerTrackSegmentFoodName(p, i, foodName)
    track[p].segments[i].foodName = foodName
    if foodName ~= "" then
        local x = TrackHandler.GetPlayerTrackX(p)
        local y = TrackHandler.GetPlayerTrackSegmentY(p, i)
        local eff = AddSpecialEffect(foodDB.GetFoodMDL(foodName), x, y)
        TrackHandler.SetPlayerTrackSegmentFoodEffect(p, i, eff)
        BlzSetSpecialEffectAlpha(eff, 175)
        BlzSetSpecialEffectScale(eff, 2)
    end
end

function TrackHandler.GetPlayerTrackSegmentFoodEffect(p, i)
    return track[p].segments[i].foodEff
end

function TrackHandler.SetPlayerTrackSegmentFoodEffect(p, i, eff)
    track[p].segments[i].foodEff = eff
end

function TrackHandler.GetPlayerTrackSegmentCoinEffect(p, i)
    return track[p].segments[i].coinEff
end

function TrackHandler.SetPlayerTrackSegmentCoinEffect(p, i, eff)
    track[p].segments[i].coinEff = eff
end

function TrackHandler.GetPlayerTrackSegmentFoodName(p, i)
    return track[p].segments[i].foodName
end

function TrackHandler.SetPlayerTrackSegmentCoin(p, i, b)
    track[p].segments[i].isCoinHere = b
end

function TrackHandler.SetPlayerTrackSegmentCoinValue(p, i, v)
    track[p].segments[i].coinValue = v
end

function TrackHandler.GetPlayerTrackSegmentCoinValue(p, i)
    return track[p].segments[i].coinValue
end

local coinN = 0
function TrackHandler.AddPlayerTrackSegmentCoin(p, i, b)
    TrackHandler.SetPlayerTrackSegmentCoin(p, i, true)
    local x = TrackHandler.GetPlayerTrackX(p)
    local y = TrackHandler.GetPlayerTrackSegmentY(p, i)
    local eff = AddSpecialEffect(MDL_COIN, x, y)
    TrackHandler.SetPlayerTrackSegmentCoinEffect(p, i, eff)
    BlzSetSpecialEffectScale(eff, 1 + i/SETTINGS_TRACK_SEGMENTS_NUMBER * (SETTING_COIN_MAX_SCALE - 1))
    coinN = coinN + 1
    TrackHandler.SetPlayerTrackSegmentCoinValue(p, i, coinN)
end

function TrackHandler.IsCoinOnPlayerTrackSegment(p, i)
    return track[p].segments[i].isCoinHere
end

function TrackHandler.CreateTrackForPlayer(p)
        local players = playerHandler.GetPlayers()
        local region = players[p].trackStartRegion
        local x = GetRectCenterX(region)
        local y = GetRectCenterY(region)
        local ttH = 25
        local ttS = 0.025

        if track[p] == nil then
            track[p] = {}
        end
        
        track[p].x = x
        track[p].segments = {}

        for i = 0, SETTINGS_TRACK_SEGMENTS_NUMBER do
            local tt = CreateTextTag()
            local s = i .. " VP"
            local yy = i * SETTINGS_TRACK_SEGMENTS_LENGTH
            track[p].segments[i] = {
                y = y + yy,
                textTag = tt,
                index = i,
                foodName = "",
                isCoinHere = false,
                coinValue = 0,
                foodEff = nil,
                coinEff = nil,
            }
            SetTextTagText(tt, s, ttS)
            SetTextTagPos(tt, x, y + yy, ttH) 
            SetTextTagVisibility(tt, true)
        end

        TimerStart(CreateTimer(), 0.1, true, function()
            TrackHandler.RednderTrack()
        end)
end

local a = 0
local z = 0
function TrackHandler.RednderTrack()
    a = (a + 5) % 361 
    z = -175 + math.sin(math.rad(a)*3) * 25

    for p, data in pairs(playerHandler.GetPlayers()) do
        if playerHandler.IsActive then
            for i = 0, SETTINGS_TRACK_SEGMENTS_NUMBER do
                local foodName = TrackHandler.GetPlayerTrackSegmentFoodName(p, i)
                if  foodName ~= "" then
                    local effFood = TrackHandler.GetPlayerTrackSegmentFoodEffect(p, i)
                    BlzSetSpecialEffectYaw(effFood, 1 - math.rad(a))
                    BlzSetSpecialEffectZ(effFood, z)
                end
                local coin = TrackHandler.IsCoinOnPlayerTrackSegment(p, i)
                if coin then
                    local effCoin = TrackHandler.GetPlayerTrackSegmentCoinEffect(p, i)
                    local coinScale = 1 - (BlzGetSpecialEffectScale(effCoin) - 1)/(SETTING_COIN_MAX_SCALE - 1)
                    local redness = 125 + R2I(130 * coinScale)
                    BlzSetSpecialEffectColor(effCoin, 255, redness, redness)
                    BlzSetSpecialEffectZ(effCoin, z)
                end
            end
        end
    end
end

-- ============================================
-- Подписки
-- ============================================

eventBus.sub_OnPlayerStartActionPhase(
    function (p, currentRound)
        for i = 0, SETTINGS_TRACK_SEGMENTS_NUMBER do
            local misc = require("lib.misc")
            if misc.isPrime(i) then
                TrackHandler.AddPlayerTrackSegmentCoin(p, i, true)
            end
        end
    end
)

eventBus.sub_OnDragonMovementEnd(
    function (p, foodName, currentTrackSegment)
        TrackHandler.SetPlayerTrackSegmentFoodName(p, currentTrackSegment, foodName)

        local coindelay = 0
        local coindelayTime = 0.25
        for i = 0, currentTrackSegment, 1 do
            if TrackHandler.IsCoinOnPlayerTrackSegment(p, i) then
                local coinValue = TrackHandler.GetPlayerTrackSegmentCoinValue(p, i)
                coindelay = coindelay + 1
                local t = CreateTimer()
                TimerStart(t, coindelay*coindelayTime, false, function ()
                    eventBus.fire(TrigDB.OnPlayerPickUpCoin, p, i, coinValue)
                    playerHandler.AddGold(p, coinValue)
                    TrackHandler.SetPlayerTrackSegmentCoin(p, i, false)
                    DestroyEffect(TrackHandler.GetPlayerTrackSegmentCoinEffect(p, i))
                    DestroyTimer(t)
                end)
            end
        end
        
    end
)

eventBus.sub_OnPlayerEndActionPhase(
    function (p, currentRound)
        playerHandler.SetCurrentTrackSegment(p, 0)

        for i = 0, SETTINGS_TRACK_SEGMENTS_NUMBER do
            if TrackHandler.GetPlayerTrackSegmentFoodName(p, i) ~= "" then
                DestroyEffect(TrackHandler.GetPlayerTrackSegmentFoodEffect(p, i))
                TrackHandler.SetPlayerTrackSegmentFoodName(p, i, "")
            end
            if TrackHandler.IsCoinOnPlayerTrackSegment(p, i) ~= "" then
                DestroyEffect(TrackHandler.GetPlayerTrackSegmentCoinEffect(p, i))
                TrackHandler.SetPlayerTrackSegmentCoin(p, i, false)
                coinN = 0
            end
        end
    end
)

return TrackHandler