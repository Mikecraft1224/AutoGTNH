local buildModule = require("autolib.__buildModule")

local submodules = {
    "test"
}

return buildModule(..., submodules)