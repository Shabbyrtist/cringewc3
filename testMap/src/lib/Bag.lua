local Bag = {}
local playerHandler = require("lib.PlayerHandler")

local function getFoodBag(p)
    if not playerHandler.IsActive(p) then
        return nil
    end

    return playerHandler.GetPlayers()[p].foodBag
end

local function getBufferFoodBag(p)
    if not playerHandler.IsActive(p) then
        return nil
    end

    return playerHandler.GetPlayers()[p].bufferFoodBag
end

function Bag.RefreshFoodBag(p)
    local foodBag = getFoodBag(p)
    local bufferBag = getBufferFoodBag(p)
    
    if not foodBag or not bufferBag then
        return
    end
    
    local copy = {}
    for i, food in ipairs(foodBag) do
        copy[i] = food
    end
    
    for i = #bufferBag, 1, -1 do
        table.remove(bufferBag, i)
    end
    for i, food in ipairs(copy) do
        table.insert(bufferBag, food)
    end
end

function Bag.AddFood(p, foodName)
    local bag = getFoodBag(p)
    local bufferBag = getBufferFoodBag(p)
    if not bag then
        return
    end

    table.insert(bag, foodName)
    table.insert(bufferBag, foodName)
end

function Bag.BufferIsEmpty(p)
    local bag = getBufferFoodBag(p)
    if not bag then
        return true
    end
    return #bag == 0
end

function Bag.BufferCount(p)
    local bag = getBufferFoodBag(p)
    if not bag then
        return 0
    end
    return #bag
end

function Bag.BufferGetRandom(p)
    local bag = getBufferFoodBag(p)

    if not bag or #bag == 0 then
        return nil
    end

    local index = GetRandomInt(1, #bag)
    local food = bag[index]
    table.remove(bag, index)
    return food
end

return Bag