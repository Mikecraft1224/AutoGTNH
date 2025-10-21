local component = require("component")
local event = require("event")
local modem = component.modem

local uptime = computer.uptime
local pullSignal = computer.pullSignal

-- modem.open(123)

local i = 0
local target
while true do
    i = i + 1
    modem.broadcast(123, "[" .. i .. "] Hello, World!")

    target = uptime() + 1
    while uptime() < target do pullSignal(0) end
end