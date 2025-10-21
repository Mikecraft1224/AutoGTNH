local com = require("component")
local computer = require("computer")

local modem = com.modem
local address = computer.getBootAddress()

local i = 0
while true do
    modem.broadcast(123, string.format("[%d] Hello from %s!", i, address))
    i = i + 1
    os.sleep(1)
end