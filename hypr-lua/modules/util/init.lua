local function hostname ()
  local proc = io.popen("/bin/hostname", "r")
  if proc ~= nil then
    local txt = proc:read("*a")
    proc:close()
    return txt
  end

  return ""
end

local function is_laptop ()
  local a, b = hostname():lower():find("laptop")
  return a ~= nil and a >= 0 and b ~= nil and b > 0
end

return {
  hostname = hostname,
  is_laptop = is_laptop
}