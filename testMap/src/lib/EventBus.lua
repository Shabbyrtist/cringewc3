local TriggerHandler = require("lib.TriggerHandler")
local EventBus = {}
local events = {}

function EventBus.get(name)
    if not events[name] then
        events[name] = TriggerHandler.createTrigger()
    end
    return events[name]
end

function EventBus.subscribe(name, callback)
    local event = EventBus.get(name)
    return event:subscribe(callback)
end

function EventBus.unsubscribe(name, id)
    local event = events[name]
    if event then
        event:unsubscribe(id)
        return true
    end
    return false
end

function EventBus.once(name, callback)
    local id
    id = EventBus.subscribe(name, function(...)
        callback(...)
        EventBus.unsubscribe(name, id)
    end)
    return id
end

function EventBus.clear(name)
    local event = events[name]
    if event then
        event:clear()
        return true
    end
    return false
end

function EventBus.fire(name, ...)
    local event = events[name]
    if event then
        event:fire(...)
    end
end

TrigDB = {}

TrigDB.OnStartOfActionPhase = "OnStartOfActionPhase"
---@param callback fun(currentRound: number)
function EventBus.sub_OnStartOfActionPhase(callback)
    return EventBus.subscribe(TrigDB.OnStartOfActionPhase, callback)
end

TrigDB.OnPlayerStartActionPhase = "OnPlayerStartActionPhase"
---@param callback fun(p : player, currentRound : number)
function EventBus.sub_OnPlayerStartActionPhase(callback)
    return EventBus.subscribe(TrigDB.OnPlayerStartActionPhase, callback)
end

TrigDB.OnEndOfActionPhase = "OnEndOfActionPhase"
---@param callback fun(currentRound : number)
function EventBus.sub_OnEndOfActionPhase(callback)
    return EventBus.subscribe(TrigDB.OnEndOfActionPhase, callback)
end

TrigDB.OnPlayerEndActionPhase = "OnPlayerEndActionPhase"
---@param callback fun(p : player, currentRound : number)
function EventBus.sub_OnPlayerEndActionPhase(callback)
    return EventBus.subscribe(TrigDB.OnPlayerEndActionPhase, callback)
end

TrigDB.OnPlayerFinishActionPhase = "OnPlayerFinishActionPhase"
---@param callback fun(p : player)
function EventBus.sub_OnPlayerFinishActionPhase(callback)
    return EventBus.subscribe(TrigDB.OnPlayerFinishActionPhase, callback)
end

TrigDB.OnPullFromBag = "OnPullFromBag"
---@param callback fun(p : player)
function EventBus.sub_OnPullFromBag(callback)
    return EventBus.subscribe(TrigDB.OnPullFromBag, callback)
end

TrigDB.OnPullFromBagEnd = "OnPullFromBagEnd"
---@param callback fun(p : player)
function EventBus.sub_OnPullFromBagEnd(callback)
    return EventBus.subscribe(TrigDB.OnPullFromBagEnd, callback)
end

TrigDB.OnBagRefresh = "OnBagRefresh"
---@param callback fun(p : player, bagFoodCount : number)
function EventBus.sub_OnBagRefresh(callback)
    return EventBus.subscribe(TrigDB.OnBagRefresh, callback)
end

TrigDB.OnFeedingAnimationStart = "OnFeedingAnimationStart"
---@param callback fun(p : player, foodName : string)
function EventBus.sub_OnFeedingAnimationStart(callback)
    return EventBus.subscribe(TrigDB.OnFeedingAnimationStart, callback)
end

TrigDB.OnFeedingAnimationEnd = "OnFeedingAnimationEnd"
---@param callback fun(p : player, foodName : string)
function EventBus.sub_OnFeedingAnimationEnd(callback)
    return EventBus.subscribe(TrigDB.OnFeedingAnimationEnd, callback)
end

TrigDB.OnDragonMovementEnd = "OnDragonMovementEnd"
---@param callback fun(p : player, foodName : string, currentTrackSegment : number)
function EventBus.sub_OnDragonMovementEnd(callback)
    return EventBus.subscribe(TrigDB.OnDragonMovementEnd, callback)
end
---@param callback fun(p : player, foodName : string, currentTrackSegment : number)
---@return integer handler_id
function EventBus.once_OnDragonMovementEnd(callback)
    return EventBus.once(TrigDB.OnDragonMovementEnd, callback)
end

TrigDB.OnPlayerExploded = "OnPlayerExploded"
---@param callback fun(p : player)
function EventBus.sub_OnPlayerExploded(callback)
    return EventBus.subscribe(TrigDB.OnPlayerExploded, callback)
end
---@param callback fun(p : player)
---@return integer handler_id
function EventBus.once_OnPlayerExploded(callback)
    return EventBus.once(TrigDB.OnPlayerExploded, callback)
end

return EventBus
