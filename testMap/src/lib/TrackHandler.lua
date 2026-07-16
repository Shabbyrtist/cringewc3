local TrackHandler = {}
local track = {}

local playerHandler = require("lib.PlayerHandler")
local foodDB = require("lib.FoodDB")

function TrackHandler.GetPlayerTrackX(p)
    return track[p].x
end

function TrackHandler.GetPlayerTrackSegmentY(p, i)
    return track[p].segments[i].y
end

function TrackHandler.SetPlayerTrackSegmentFoodName(p, i, foodName)
    track[p].segments[i].foodName = foodName
    if foodName ~= "" then
        local i = playerHandler.GetCurrentTrackSegment(p)
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

function TrackHandler.GetPlayerTrackSegmentFoodName(p, i)
    return track[p].segments[i].foodName
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
                foodEff = nil
            }
            SetTextTagText(tt, s, ttS)
            SetTextTagPos(tt, x, y + yy, ttH) 
            SetTextTagVisibility(tt, true)
        end

        TimerStart(CreateTimer(), 0.1, true, function()
            TrackHandler.DrawFood()
        end)
end

local a = 0
local z = 0
function TrackHandler.DrawFood()
    a = (a + 5) % 361 
    z = -175 + math.sin(math.rad(a)*3) * 25
    local localPlayer = GetLocalPlayer()

    for p, data in pairs(playerHandler.GetPlayers()) do
        if playerHandler.IsActive and localPlayer == p then
            for i = 0, SETTINGS_TRACK_SEGMENTS_NUMBER do
                local foodName = TrackHandler.GetPlayerTrackSegmentFoodName(p, i)
                if  foodName ~= "" then
                    local eff = TrackHandler.GetPlayerTrackSegmentFoodEffect(p, i)
                    BlzSetSpecialEffectYaw(eff, 1 - math.rad(a))
                    BlzSetSpecialEffectZ(eff, z)
                end
            end
        end
    end
end

return TrackHandler