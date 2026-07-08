local Bag = {}
local foodDB = require("lib.FoodDB")
local playerHandler = require("lib.PlayerHandler")

local function getFoodBag(p)
    if not playerHandler.IsActive(p) then
        return nil
    end

    local player = playerHandler.GetPlayers()[p]
    return player.foodBag
end

function Bag.AddFood(p, foodName)
    local bag = getFoodBag(p)
    if not bag then
        return
    end
    
    local foodUnit = foodDB.GetFoodUnit(foodName)
    if not foodUnit then
        return
    end

    table.insert(bag, foodName)
end

function Bag.IsEmpty(p)
    local bag = getFoodBag(p)
    if not bag then
        return true
    end
    return #bag == 0
end

function Bag.Count(p)
    local bag = getFoodBag(p)
    if not bag then
        return 0
    end
    return #bag
end

function Bag.GetRandom(p)
    local bag = getFoodBag(p)

    if not bag or #bag == 0 then
        return nil
    end

    local index = GetRandomInt(1, #bag)
    local food = bag[index]

    table.remove(bag, index)

    return food
end

return Bag