local com = require("component")
local event = require("event")
local chatBox = com.chat_box

if not chatBox then
    return
end

chatBox.setName("Alexa")

while true do
    local user, message = event.pull("chat_message")
    local content = message:match("^Alexa, (.+)")
    if content then
        chatBox.say(string.format("Hello, %s! Thanks for telling me '%s'!", user, content))
    end
end