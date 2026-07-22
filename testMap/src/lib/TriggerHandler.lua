local TriggerHandler = {}
local Trigger = {}
Trigger.handlers = {}
Trigger._next_id = 0

function Trigger:new()
    local newTrigger = {
        handlers = {},
        _next_id = 0
    }
    setmetatable(newTrigger, {__index = self})
    return newTrigger
end

function Trigger: subscribe(callback)
    self._next_id = self._next_id + 1
    local id = self._next_id
    self.handlers[id] = callback
    return id
end

function Trigger:unsubscribe(id)
    self.handlers[id] = nil
    local cleaned = {}
    for _, cb in pairs(self.handlers) do
        table.insert(cleaned, cb)
    end
    self.handlers = cleaned
end

function Trigger:clear(id)
    self.handlers = nil
    self._next_id = 0
end

function Trigger:fire(...)
    for _, callback in pairs(self.handlers) do
        callback(...)
    end
end

function TriggerHandler.createTrigger()
    return Trigger:new()
end

return TriggerHandler