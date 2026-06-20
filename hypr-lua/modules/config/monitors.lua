local util = require("modules.util")

local function setup_360hz()
  hl.monitor({
    output   = "HDMI-A-2",
    mode     = "1920x1080@143.98",
    position = "0x0",
    scale    = 1,
  })
  hl.monitor({
    output   = "DP-1",
    mode     = "2560x1440@360",
    position = "1920x0",
    scale    = 1,
  })
  hl.monitor({
    output   = "DP-2",
    mode     = "2560x1440@180.06",
    position = "4480x0",
    scale    = 1,
  })
end

local function setup_180hz()
  hl.monitor({
    output   = "HDMI-A-2",
    mode     = "1920x1080@143.98",
    position = "0x0",
    scale    = 1,
  })
  hl.monitor({
    output   = "DP-1",
    mode     = "5120x2880@180",
    position = "1920x0",
    scale    = 2,
  })
  hl.monitor({
    output   = "DP-2",
    mode     = "2560x1440@180.06",
    position = "4480x0",
    scale    = 1,
  })
end

------------------------------------------
-- Default workspace decks per monitors --
------------------------------------------

hl.bind('SUPER + F1', setup_180hz)
hl.bind('SUPER + F2', setup_360hz)

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
  -- Default mode.
  setup_180hz()

  hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-2", persistent = true })

  hl.workspace_rule({ workspace = "2", monitor = "DP-1", persistent = true })
  hl.workspace_rule({ workspace = "3", monitor = "DP-1", persistent = true })
  hl.workspace_rule({ workspace = "4", monitor = "DP-1", persistent = true })
  hl.workspace_rule({ workspace = "5", monitor = "DP-1", persistent = true })

  hl.workspace_rule({ workspace = "7", monitor = "DP-2", persistent = true })
  hl.workspace_rule({ workspace = "6", monitor = "DP-2", persistent = true })
  hl.workspace_rule({ workspace = "8", monitor = "DP-2", persistent = true })
  hl.workspace_rule({ workspace = "9", monitor = "DP-2", persistent = true })
end
