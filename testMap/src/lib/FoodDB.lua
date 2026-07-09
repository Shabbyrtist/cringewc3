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

    if sfxType == "hello" then
        return foodUnits[foodName].data.sfxHello
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
    local data = {}

    data = {
        steps = 1,
        explosionChance = 7,
        sfxHello = SFX_FOOD_TIMMY_HELLO,
        sfxDeath = SFX_FOOD_TIMMY_DEATH
    }
    FoodDB.NewFoodUnit("Timmy", data)

    data = {
        steps = 3,
        explosionChance = 4,
        sfxHello = SFX_FOOD_VILLAGERM_HELLO,
        sfxDeath = SFX_FOOD_VILLAGERM_DEATH
    }
    FoodDB.NewFoodUnit("VillagerM", data)
end

return FoodDB