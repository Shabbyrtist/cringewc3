local FoodDB = {}
local foodUnits = {}

function FoodDB.GetFoodUnit(foodName) 
    return foodUnits[foodName]
end

function FoodDB.GetFoodUnits() 
    return foodUnits
end

function FoodDB.GetFoodUnitSteps(foodName)
    if not foodUnits[foodName] then
        print("ERROR: Food unit not found: " .. tostring(foodName))
        return 0
    end
    return foodUnits[foodName].data.steps
end

function FoodDB.NewFoodUnit(foodName, data)
    foodUnits[foodName] = {
        data = data
    }
end

function FoodDB.Init()
    local data = {
        steps = 1,
        explosionChance = 7
    }
    FoodDB.NewFoodUnit("Timmy", data)
end

return FoodDB