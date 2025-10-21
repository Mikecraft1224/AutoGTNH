local component = require("component")
local event = require("event")
local modem = component.modem

modem.open(123)

while true do 
    local _, _, from, port, _, message = event.pull("modem_message")
    print("Received message from " .. from .. " on port " .. port .. ": " .. message)
end