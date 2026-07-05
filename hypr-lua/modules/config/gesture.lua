local util = require("modules.util")

local function toggle_special()
  hl.dispatch(hl.dsp.workspace.toggle_special())
end

if util.is_laptop() then
  hl.gesture({
    fingers = 4,
    direction = "horizontal",
    action = "workspace"
  })

  hl.gesture({
    fingers = 4,
    direction = "down",
    action = toggle_special
  })
  hl.gesture({
    fingers = 4,
    direction = "up",
    action = toggle_special
  })
end
