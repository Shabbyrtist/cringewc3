local TrackHandler = {}
local track = {}

function TrackHandler.GetPlayerTrackX(p)
    return track[p].x
end

function TrackHandler.GetPlayerTrackSegmentY(p, i)
    return track[p].segments[i].y
end

function TrackHandler.CreateTrackForPlayer(p)
        local playerHandler = require("lib.PlayerHandler")
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
            local s = (i + 1) .. " VP"
            local yy = i * SETTINGS_TRACK_SEGMENTS_LENGTH
            track[p].segments[i] = {
                y = y + yy,
                textTag = tt,
                index = i
            }
            SetTextTagText(tt, s, ttS)
            SetTextTagPos(tt, x, y + yy, ttH) 
            SetTextTagVisibility(tt, true)
        end
end

return TrackHandler