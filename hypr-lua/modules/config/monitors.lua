local util = require("modules.util")

------------------------------------------
-- Default workspace decks per monitors --
------------------------------------------

if util.is_laptop() then
  hl.monitor({
    output   = "eDP-1",
    mode     = "2560x1600@60.001",
    position = "0x0",
    scale    = 1.33,
  })

  hl.workspace_rule({ workspace = "1", monitor = "eDP-1", persistent = true })
  hl.workspace_rule({ workspace = "2", monitor = "eDP-1", persistent = true })
  hl.workspace_rule({ workspace = "3", monitor = "eDP-1", persistent = true })
  hl.workspace_rule({ workspace = "4", monitor = "eDP-1", persistent = true })
else
  hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080@60",
    position = "0x0",
    scale    = "auto",
  })
  hl.monitor({
    output   = "DP-1",
    mode     = "2560x1440@180",
    position = "1920x0",
    scale    = "auto",
  })
  hl.monitor({
    output   = "DP-2",
    mode     = "1920x1080@143.98",
    position = "4480x0",
    scale    = "auto",
  })

  hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-1", persistent = true })

  hl.workspace_rule({ workspace = "2", monitor = "DP-1", persistent = true })
  hl.workspace_rule({ workspace = "3", monitor = "DP-1", persistent = true })
  hl.workspace_rule({ workspace = "4", monitor = "DP-1", persistent = true })
  hl.workspace_rule({ workspace = "5", monitor = "DP-1", persistent = true })

  hl.workspace_rule({ workspace = "7", monitor = "DP-2", persistent = true })
  hl.workspace_rule({ workspace = "6", monitor = "DP-2", persistent = true })
  hl.workspace_rule({ workspace = "9", monitor = "DP-2", persistent = true })
  hl.workspace_rule({ workspace = "8", monitor = "DP-2", persistent = true })
end