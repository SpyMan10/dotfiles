local cmds = require("modules.cmds")

-- Windows Key on PC keyboard
local mainMod = "SUPER"

-- Generals
hl.bind(mainMod .. " + ESCAPE", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.window.float())
hl.bind(mainMod .. " + W", hl.dsp.layout("swapsplit"))
hl.bind(mainMod .. " + F", hl.dsp.layout("togglesplit"))

-- Move window while holding it.
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })

-- Programs
hl.bind(mainMod .. " + C", cmds.terminal)
hl.bind(mainMod .. " + R", cmds.toggle_launcher)
hl.bind(mainMod .. " + L", cmds.session_lock)
hl.bind("PRINT", cmds.print_scr_region)
hl.bind(mainMod .. " + PRINT", cmds.print_scr_window)
hl.bind(mainMod .. " + SHIFT + C", cmds.pick_color)
hl.bind(mainMod .. " + E", cmds.file_manager)

-- Multimedia / Audio / Display
hl.bind("XF86AudioPlay", cmds.multimedia.toggle_play_pause)
hl.bind("XF86AudioPause", cmds.multimedia.toggle_play_pause)
hl.bind("XF86AudioNext", cmds.multimedia.next)
hl.bind("XF86AudioPrev", cmds.multimedia.previous)

hl.bind("XF86AudioRaiseVolume", cmds.audio.raise_volume)
hl.bind("XF86AudioLowerVolume", cmds.audio.lower_volume)
hl.bind("XF86AudioMute", cmds.audio.mute)
hl.bind("XF86AudioMicMute", cmds.audio.mic_mute)

hl.bind("XF86MonBrightnessUp", cmds.brightness_up)
hl.bind("XF86MonBrightnessDown", cmds.brightness_down)

-- Special Workspace
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Workspace focus / window move
hl.bind(mainMod .. " + LEFT", hl.dsp.focus({ workspace = "-1" }))
hl.bind(mainMod .. " + RIGHT", hl.dsp.focus({ workspace = "+1" }))

for i = 0, 10, 1 do
  local key_code = i + 10
  local workspace_index = i + 1
  hl.bind(mainMod .. " + code:" .. key_code, hl.dsp.focus({ workspace = workspace_index }))
  hl.bind(mainMod .. " + SHIFT + code:" .. key_code, hl.dsp.window.move({ workspace = workspace_index }))
end
