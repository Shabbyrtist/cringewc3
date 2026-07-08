local FoodDB = {}
local foodUnits = {}

function FoodDB.GetFoodUnit(foodName) 
    return foodUnits[foodName]
end

function FoodDB.GetFoodUnits() 
    return foodUnits
end

function FoodDB.GetFoodSteps(foodName)
    if not foodUnits[foodName] then
        print("ERROR: Food unit not found: " .. tostring(foodName))
        return 0
    end
    return foodUnits[foodName].data.steps
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

    if sfxType == "death" then
        return foodUnits[foodName].data.sfxDeath
    end
end

function FoodDB.NewFoodUnit(foodName, data)
    foodUnits[foodName] = {
        data = data
    }
end

function FoodDB.Init()
    local data = {
        steps = 1,
        explosionChance = 7,
        sfxDeath = SFX_FOOD_TIMMY_DEATH
    }
    FoodDB.NewFoodUnit("Timmy", data)
end

return FoodDB