if status is-interactive
  set -U fish_greeting ""
  set -x ELECTRON_OZONE_PLATFORM_HINT wayland
  set -g fish_transient_prompt 1
  set -g show_hostname_in_prompt 0
end

if status is-login
  contains ~/.local/bin $PATH
  or set -x PATH ~/.local/bin $PATH
end