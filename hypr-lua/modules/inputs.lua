local util = require("modules.util")

if util.is_laptop() then
  hl.config({
    input = {
      kb_layout = "fr",
      follow_mouse = 2,
      sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

      touchpad = {
        natural_scroll = false,
        scroll_factor = 0.35
      },

      numlock_by_default = true,
      force_no_accel = false,
      accel_profile = "custom",
      scroll_points = { 0.000, 0.307, 0.615, 1.077, 1.539, 2.002, 2.505, 3.208, 3.910, 4.613, 5.315, 6.018, 6.720, 7.423, 8.125, 8.828, 9.530, 10.233, 10.935, 12.387 }
    }
  })
else
  hl.config({
    input = {
      kb_layout = "us",
      kb_variant = "intl",
      kb_model = "pc105",
      follow_mouse = 2,
      sensitivity = -0.5, -- -1.0 - 1.0, 0 means no modification.

      touchpad = {
        natural_scroll = false
      },

      numlock_by_default = true,
      force_no_accel = true
    }
  })
end
