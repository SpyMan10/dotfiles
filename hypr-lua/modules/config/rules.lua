----------------
-- Smart gaps --
----------------

hl.workspace_rule({
  workspace = "w[tv1]s[false]",
  gaps_out = 0,
  gaps_in = 0
})
hl.workspace_rule({
  workspace = "f[1]s[false]",
  gaps_out = 0,
  gaps_in = 0
})

hl.window_rule({
  match = {
    float = false,
    workspace = "w[tv1]s[false]"
  },
  border_size = 0,
  rounding = 0,
  no_shadow = 1
})
hl.window_rule({
  match = {
    float = false,
    workspace = "f[1]s[false]"
  },
  border_size = 0,
  rounding = 0,
  no_shadow = 1
})

-------------------------------------
-- Put window border when floating --
-------------------------------------

hl.window_rule({
  name = "enable_border_when_floating",
  match = {
    float = true
  },
  border_size = 3
})

-- Apps special rules

hl.window_rule({
  name = "disable_blur_on_vscode",
  match = {
    class = "code"
  },
  no_blur = 1
})

hl.window_rule({
  name = "kitty_opacity",
  match = {
    class = "kitty"
  },
  opacity = 0.9
})
