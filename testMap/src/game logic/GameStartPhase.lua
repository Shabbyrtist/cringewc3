local GameStart = {}

function GameStart.StartPhase()
    local ui = require("ui.UI")
    ui.HideDefaultUI()
    ui.CreateMenuButton()

    --@debug@
    print("Старт игры - Начало")
    --@end-debug@
    
    local phaseHandler          = require("lib.PhaseHandler")
    local playerHandler         = require("lib.PlayerHandler")
    local playerDragonHandler   = require("lib.PlayerDragonHandler")
    local playerHeroHandler     = require("lib.PlayerHeroHandler")
    local trackHandler          = require("lib.TrackHandler")
    local foodDB                = require("lib.FoodDB")
    local bag                   = require("lib.Bag")

    local gameUIController      = require("ui.GameUiController")

    
    for p, data in pairs(playerHandler.GetPlayers()) do
        local trackStartRegion = _G["gg_rct_trackStartPlayer" .. (GetPlayerId(p) + 1)]
        data.trackStartRegion = trackStartRegion
        local x = GetRectCenterX(trackStartRegion)
        local y = GetRectCenterY(trackStartRegion)

        gameUIController.CreatePlayerUI(p)

        local dragon = playerDragonHandler.CreateDragonForPlayer(p)
        local hero = playerHeroHandler.CreateHeroForPlayer(p)
        playerHandler.SetDragonUnit(p, dragon)
        playerHandler.SetHeroUnit(p, hero)
        SetUnitPosition(dragon, x, y)
        SetUnitPosition(hero, x - 256., y)

        trackHandler.CreateTrackForPlayer(p)
        playerHandler.SetCurrentTrackSegment(p, 0)

        bag.AddFood(p, "VillagerM")
        bag.AddFood(p, "VillagerM")
        bag.AddFood(p, "VillagerM")
        bag.AddFood(p, "VillagerM")
        bag.AddFood(p, "VillagerF")
        bag.AddFood(p, "VillagerF")
        bag.AddFood(p, "VillagerF")
        bag.AddFood(p, "VillagerF")
        bag.AddFood(p, "Timmy")
        bag.AddFood(p, "Timmy")
        bag.AddFood(p, "Timmy")
        bag.AddFood(p, "Timmy")
        bag.AddFood(p, "Timmy")

        if (GetLocalPlayer() == p) then
            SelectUnit(dragon, true)
            --SetCameraPosition(x, y)
            --SetCameraTargetControllerNoZForPlayer(p, dragon, 0, 0, false)   
        end
    end

    phaseHandler.NextState()

end

function GameStart.EndPhase()
    print("Старт игры - Конец")
end

return GameStart