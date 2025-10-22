local buildModule = require("__buildModule")

local submodules = {
    "test"
}

return buildModule(..., submodules)