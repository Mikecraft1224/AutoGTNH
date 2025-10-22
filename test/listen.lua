local com = require("component")
local event = require("event")

function testing()
    print("This is a test function.")
end

local modem = com.modem
modem.open(123)

while true do 
    local _, _, from, port, _, message = event.pull("modem_message")
    print(string.format("Received message from %s on port %d: %s", from, port, message))
end