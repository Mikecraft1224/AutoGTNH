local MODULE = {}

local buildModule = require("__buildModule")

local submodules = {
    "string",
    "chained"
}

MODULE = buildModule(..., submodules)

return MODULE