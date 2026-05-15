hl.gesture({
  fingers = 4,
  direction = "horizontal",
  action = "workspace"
})

local function toggle_special ()
  hl.dispatch(hl.dsp.workspace.toggle_special())
end

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
