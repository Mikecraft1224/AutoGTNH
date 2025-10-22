local function buildModule(path, subs)
    local MODULE = {}
    for _, name in ipairs(subs) do
        local mod = require(path .. "." .. name)
        MODULE[name] = mod
    end
    return MODULE
end

return buildModule