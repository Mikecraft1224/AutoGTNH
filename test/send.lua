local component = require("component")

local function broadcast(port, message) 
    component.modem.broadcast(port, message)
end

-- modem.open(123)

local i = 0
local target
while true do
    i = i + 1
    broadcast(123, "[" .. i .. "] Hello, World!")

    os.sleep(5)
end