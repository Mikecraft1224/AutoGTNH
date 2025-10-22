local com = require("component")
local event = require("event")
local chatBox = com.chat_box

if not chatBox then
    return
end

chatBox.setName("Alexa")

while true do
    local user, message = event.pull("chat_message")
    if message then
        chatBox.say(string.format("Hello, %s! Thanks for telling me '%s'!", user, message))
    end
end