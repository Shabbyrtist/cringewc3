local FoodDB = {}
local foodUnits = {}

function FoodDB.GetFoodUnit(foodName) 
    return foodUnits[foodName]
end

function FoodDB.GetFoodUnits() 
    return foodUnits
end

function FoodDB.GetFoodStepsForPlayer(foodName, p)
    return foodUnits[foodName].data.steps(p)
end

function FoodDB.GetFoodExplosionChance(foodName)
    return foodUnits[foodName].data.explosionChance
end

function FoodDB.GetFoodSFXHello(foodName)
    return foodUnits[foodName].data.sfxHello
end

function FoodDB.GetFoodSFXDeath(foodName)
    return foodUnits[foodName].data.sfxDeath
end

function FoodDB.GetFoodMDL(foodName)
    return foodUnits[foodName].data.mdl
end

function FoodDB.NewFoodUnit(foodName, data)
    foodUnits[foodName] = {
        data = data
    }
end


function FoodDB.Init()
    local playerHandler = require("lib.PlayerHandler")
    local trackHandler = require("lib.TrackHandler")
    local data = {}

    data = {
        steps = function() return 1 end,
        explosionChance = 7,
        sfxHello = SFX_FOOD_TIMMY_HELLO,
        sfxDeath = SFX_FOOD_TIMMY_DEATH,
        mdl = MDL_FOOD_TIMMY
    }
    FoodDB.NewFoodUnit("Timmy", data)

    data = {
        steps = function() return 2 end,
        explosionChance = 3,
        cost = 4,
        sfxHello = SFX_FOOD_VILLAGERM_HELLO,
        sfxDeath = SFX_FOOD_VILLAGERM_DEATH,
        mdl = MDL_FOOD_VILLAGERM
    }
    FoodDB.NewFoodUnit("VillagerM", data)

    data = {
        steps = function(p)
            local steps = 1
            local currentTrackSegment = playerHandler.GetCurrentTrackSegment(p)
            local lastFoodName = trackHandler.GetPlayerTrackSegmentFoodName(p, currentTrackSegment)

            if lastFoodName == "VillagerF" then
                steps = 1
            elseif lastFoodName == "VillagerM" then
                steps = 3  
            elseif lastFoodName == "Timmy" then
                steps = 1 
            end

            return steps
        end,
        explosionChance = 4,
        cost = 6,
        sfxHello = SFX_FOOD_VILLAGERF_HELLO,
        sfxDeath = SFX_FOOD_VILLAGERF_DEATH,
        mdl = MDL_FOOD_VILLAGERF
    }
    FoodDB.NewFoodUnit("VillagerF", data)
end

return FoodDB