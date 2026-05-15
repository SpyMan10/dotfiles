hl.config({
  decoration = {
    rounding = 8,
    rounding_power = 2,
    active_opacity = 1.0,
    inactive_opacity = 1.0,
    shadow = {
      enabled = true,
      range = 10,
      render_power = 2,
      color = 0x55000000
    },
    blur = {
      enabled = true,
      size = 3,
      passes = 2,
      vibrancy = 0.1696
    },
  },
  general = {
    col = {
      inactive_border = 0xff5363b5,
      active_border = 0xff5363b5
    }
  }
})

hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1.0 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

--------------
-- Generals --
--------------

hl.animation({
  leaf = "global",
  enabled = true,
  speed = 10,
  bezier = "default"
})
hl.animation({
  leaf = "border",
  enabled = true,
  speed = 5.39,
  bezier = "easeOutQuint"
})

-------------
-- Windows --
-------------

hl.animation({
  leaf = "windows",
  enabled = true,
  speed = 4.79,
  bezier = "easeOutQuint"
})
hl.animation({
  leaf = "windowsIn",
  enabled = true,
  speed = 4.1,
  bezier = "easeOutQuint",
  style = "popin 87%"
})
hl.animation({
  leaf = "windowsOut",
  enabled = true,
  speed = 1.49,
  bezier = "linear",
  style = "popin 87%"
})

-----------
-- Fades --
-----------

hl.animation({
  leaf = "fade",
  enabled = true,
  speed = 1.73,
  bezier = "almostLinear"
})
hl.animation({
  leaf = "fadeIn",
  enabled = true,
  speed = 1.46,
  bezier = "almostLinear"
})
hl.animation({
  leaf = "fadeOut",
  enabled = true,
  speed = 3.03,
  bezier = "quick"
})

------------
-- Layers --
------------

hl.animation({
  leaf = "layers",
  enabled = true,
  speed = 3.81,
  bezier = "easeOutQuint"
})
hl.animation({
  leaf = "layersIn",
  enabled = true,
  speed = 4,
  bezier = "easeOutQuint",
  style = "fade"
})
hl.animation({
  leaf = "layersOut",
  enabled = true,
  speed = 1.5,
  bezier = "linear",
  style = "fade"
})
hl.animation({
  leaf = "fadeLayersIn",
  enabled = true,
  speed = 1.79,
  bezier = "almostLinear"
})
hl.animation({
  leaf = "fadeLayersOut",
  enabled = true,
  speed = 1.39,
  bezier = "almostLinear"
})
----------------
-- Workspaces --
----------------

hl.animation({
  leaf = "workspacesIn",
  enabled = true,
  speed = 3,
  bezier = "easeInOutCubic",
  style = "slide"
})
hl.animation({
  leaf = "workspacesOut",
  enabled = true,
  speed = 3,
  bezier = "easeInOutCubic",
  style = "slide"
})

hl.animation({
  leaf = "specialWorkspaceIn",
  enabled = true,
  speed = 3,
  bezier = "easeInOutCubic",
  style = "slidevert bottom"
})
hl.animation({
  leaf = "specialWorkspaceOut",
  enabled = true,
  speed = 3,
  bezier = "easeInOutCubic",
  style = "slidevert up"
})
