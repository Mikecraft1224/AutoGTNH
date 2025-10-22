local MODULE = {}

local buildModule = require("autolib.__buildModule")

local submodules = {
    "string",
    "chained"
}

MODULE = buildModule(..., submodules)

return MODULE