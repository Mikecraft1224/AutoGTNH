local component = require("component")
local event = require("event")
local computer = require("computer")

local function openModem(port) 
    component.modem.open(port)
end

while true do 
    local _, _, from, port, _, message = event.pull("modem_message")
    print("Received message from " .. from .. " on port " .. port .. ": " .. message)
end