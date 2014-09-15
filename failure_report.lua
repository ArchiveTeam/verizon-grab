-- From https://github.com/lua-shellscript/lua-shellscript/blob/master/src/sh/commands.lua
local function escape(...)
  local command = type(...) == 'table' and ... or { ... }

  for i, s in ipairs(command) do
    s = (tostring(s) or ''):gsub('"', '\\"')
    if s:find '[^A-Za-z0-9_."/-]' then
      s = '"' .. s .. '"'
    elseif s == '' then
      s = '""'
    end
    command[i] = s
  end

  return table.concat(command, ' ')
end

function log_failure(status_code, url, downloader, item_type, item_value)
end
