local component = require("component")
local event = require("event")
local computer = require("computer")

local function broadcast(port, message) 
    component.modem.broadcast(port, message)
end

local function uptime() computer.uptime() end
local function pullSignal(i) pullSignal(i) end

-- modem.open(123)

local i = 0
local target
while true do
    i = i + 1
    broadcast(123, "[" .. i .. "] Hello, World!")

    target = uptime() + 1
    while uptime() < target do pullSignal(0) end
end