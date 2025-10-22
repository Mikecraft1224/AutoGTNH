local MODULE = {}

-- internal deps
local autolib_string = require((...) .. ".string")


local targets = {
    string = string
}

local submodules = {
    "string"
}


local function extend(dst, src, wrap)
    for k, v in pairs(src) do
        if type(v) == "function" and autolib_string.startsWith(k, "__") and dst[k] == nil then
            if wrap then
                dst[k] = function(self, ...) return v(self, ...) end
            else
                dst[k] = v
            end
        end
    end
end

for _, name in ipairs(submodules) do
    local mod = require((...) .. "." .. name)
    MODULE[name] = mod
    local tgtname = mod.__into
    local target = tgtname and targets[tgtname]
    if target then
        extend(target, mod, tgtname == "string")
    end
end


return MODULE