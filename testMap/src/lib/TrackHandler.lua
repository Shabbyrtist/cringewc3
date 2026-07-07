local TrackHandler = {}

function TrackHandler.CreateTrackForPlayer(p)
        local playerHandler = require("lib.PlayerHandler")
        local players = playerHandler.GetPlayers()
        local region = players[p].trackStartRegion
        local x = GetRectCenterX(region)
        local y = GetRectCenterY(region)
        local ttH = 25
        local ttS = 0.025

        for i = 0, SETTINGS_TRACK_SEGMENTS_NUMBER do
            local tt = CreateTextTag()
            local s = (i + 1) .. " VP"
            local yy = i * SETTINGS_TRACK_SEGMENTS_LENGTH
            SetTextTagText(tt, s, ttS)
            SetTextTagPos(tt, x, y + yy, ttH) 
            SetTextTagVisibility(tt, true)
        end
end

return TrackHandler