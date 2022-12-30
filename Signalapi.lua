--[[
Signal Api by 1ay#0001
luau is easy XDDD
]]


local Signal = {}
Signal.__index = Signal

function Signal.new(name)
 
  local self = setmetatable({}, Signal)
  self.name = name
  self.bindings = {}
  return self
end

function Signal:connect(func)
 
  table.insert(self.bindings, func)
end

function Signal:disconnect(func)
  
  for i, f in ipairs(self.bindings) do
    if f == func then
      table.remove(self.bindings, i)
      break
    end
  end
end

function Signal:fire(...)
 
  for _, f in ipairs(self.bindings) do
    f(...)
  end
end


Signal = setmetatable({}, {
  __call = function(_, ...)
    return Signal.new(...)
  end
})
