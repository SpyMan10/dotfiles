local function hostname ()
  local fd = io.open("/etc/hostname", "r")
  if fd ~= nil then
    local txt = fd:read()
    fd:close()
    return txt
  end

  return ""
end

local function is_laptop ()
  local a, b = hostname():lower():find("lp")
  return a ~= nil and a >= 0 and b ~= nil and b >= 0
end

return {
  hostname = hostname,
  is_laptop = is_laptop
}