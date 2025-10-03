if status is-interactive
  set -U fish_greeting ""
  set -x ELECTRON_OZONE_PLATFORM_HINT wayland
end

if status is-login
  contains ~/.local/bin $PATH
  or set -x PATH ~/.local/bin $PATH
end