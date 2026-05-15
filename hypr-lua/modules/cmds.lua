local function _x (cmd)
  hl.dispatch(hl.dsp.exec_cmd(cmd))
end

local function toggle_launcher ()
  _x("killall rofi || rofi -show drun -show-icons")
end

local function print_scr_window ()
  _x("hyprshot -m window -m active --clipboard-only -s")
end

local function print_scr_region ()
  _x("hyprshot -m region --clipboard-only -s")
end

local function session_lock ()
  _x("hyprlock -q")
end

local function pick_color ()
  _x("hyprpicker -a")
end

local function terminal ()
  _x("alacritty")
end

local function file_manager ()
  _x("thunar")
end

local function raise_volume ()
  _x("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+")
end

local function lower_volume ()
  _x("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-")
end

local function mute ()
  _x("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle")
end

local function mic_mute()
  _x("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle")
end

local function brightness_up()
  _x("brightnessctl -e4 -n2 set 5%+")
end

local function brightness_down()
  _x("brightnessctl -e4 -n2 set 5%-")
end

local function toggle_play()
  _x("playerctl play-pause")
end

local function next_track()
  _x("playerctl next")
end

local function prev_track()
  _x("playerctl previous")
end

return {
  toggle_launcher = toggle_launcher,
  print_scr_window = print_scr_window,
  print_scr_region = print_scr_region,
  session_lock = session_lock,
  pick_color = pick_color,
  terminal = terminal,
  file_manager = file_manager,
  brightness_up = brightness_up,
  brightness_down = brightness_down,
  audio = {
    raise_volume = raise_volume,
    lower_volume = lower_volume,
    mute = mute,
    mic_mute = mic_mute
  },
  multimedia = {
    toggle_play_pause = toggle_play,
    next = next_track,
    previous = prev_track
  }
}
