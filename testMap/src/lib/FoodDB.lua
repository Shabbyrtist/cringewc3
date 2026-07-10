local FoodDB = {}
local foodUnits = {}

function FoodDB.GetFoodUnit(foodName) 
    return foodUnits[foodName]
end

function FoodDB.GetFoodUnits() 
    return foodUnits
end

function FoodDB.GetFoodStepsForPlayer(foodName, p)
    if not foodUnits[foodName] then
        print("ERROR: Food unit not found: " .. tostring(foodName))
        return 0
    end
    return foodUnits[foodName].data.steps(p)
end

function FoodDB.GetFoodExplosionChance(foodName)
    if not foodUnits[foodName] then
        print("ERROR: Food unit not found: " .. tostring(foodName))
        return 0
    end
    return foodUnits[foodName].data.explosionChance
end

function FoodDB.GetFoodSFX(foodName, sfxType)
    if not foodUnits[foodName] then
        print("ERROR: Food unit not found: " .. tostring(foodName))
        return 0
    end

    if sfxType == "hello" then
        return foodUnits[foodName].data.sfxHello
    end

    if sfxType == "death" then
        return foodUnits[foodName].data.sfxDeath
    end
end

function FoodDB.FoodInitCallBackForPlayer(foodName, p)
    foodUnits[foodName].data.initCallback(p)
end

function FoodDB.NewFoodUnit(foodName, data)
    foodUnits[foodName] = {
        data = data
    }
end


function FoodDB.Init()
    local data = {}

    data = {
        steps = function() return 1 end,
        explosionChance = 7,
        sfxHello = SFX_FOOD_TIMMY_HELLO,
        sfxDeath = SFX_FOOD_TIMMY_DEATH,
        initCallback = function()end,
        postCallback = function()end
    }
    FoodDB.NewFoodUnit("Timmy", data)

    data = {
        steps = function() return 3 end,
        explosionChance = 4,
        cost = 5,
        sfxHello = SFX_FOOD_VILLAGERM_HELLO,
        sfxDeath = SFX_FOOD_VILLAGERM_DEATH,
        initCallback = function()end,
        postCallback = function()end
    }
    FoodDB.NewFoodUnit("VillagerM", data)

    data = {
        steps = function(p)
            local playerHandler = require("lib.PlayerHandler")
            local trackHandler = require("lib.TrackHandler")
            local steps = 1

            local currentTrackSegment = playerHandler.GetCurrentTrackSegment(p)
            local lastTrackSegment = currentTrackSegment - 1
            local lastFoodName = ""

            while (lastTrackSegment > 0 and lastFoodName == "") do
                lastFoodName = trackHandler.GetPlayerTrackSegmentFoodName(p, lastTrackSegment)
                lastTrackSegment = lastTrackSegment - 1
            end

            if lastFoodName == "VillagerF" then
                steps = 1
            elseif lastFoodName == "VillagerM" then
                steps = 4   
            elseif lastFoodName == "Timmy" then
                steps = 2 
            end

            return steps
        end,
        explosionChance = 3,
        cost = 5,
        sfxHello = SFX_FOOD_VILLAGERF_HELLO,
        sfxDeath = SFX_FOOD_VILLAGERF_DEATH,
        initCallback = function(p) end,
        postCallback = function(p) end
    }
    FoodDB.NewFoodUnit("VillagerF", data)
end

return FoodDB