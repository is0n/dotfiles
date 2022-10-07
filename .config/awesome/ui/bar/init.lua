local awful = require("awful")
local wibox = require("wibox")
local dpi = require("beautiful").xresources.apply_dpi
local taglist = require("ui.bar.taglist")

awful.screen.connect_for_each_screen(
  function(s)
    awful.wibar {
      position = "top",
      screen   = s,
      widget   = {
        -- Left
        {
          taglist(s),
          left = dpi(10),
          widget = wibox.container.margin
        },

        -- Middle
        {
          layout = wibox.layout.fixed.horizontal
        },

        -- Right
        {
          wibox.widget.textclock(),
          layout = wibox.layout.fixed.horizontal,
        },

        layout = wibox.layout.align.horizontal
      }
    }
  end
)
