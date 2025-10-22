local M = {}

function M.startsWith(str, prefix) return str:sub(1, #prefix) == prefix end

function M.endsWith(str, suffix) return str:sub(-#suffix) == suffix end

function M.trim(str) return str:match("^%s*(.-)%s*$") end

function M.stripPrefix(str, prefix)
    if M.startsWith(str, prefix) then return str:sub(#prefix + 1), true end
    return str, false
end

function M.stripSuffix(str, suffix)
    if M.endsWith(str, suffix) then return str:sub(1, -#suffix - 1), true end
    return str, false
end

function M.split(str, sep)
    local result = {}
    local pattern = "([^" .. sep .. "]+)"
    for part in str:gmatch(pattern) do
        table.insert(result, part)
    end
    return result
end

return M