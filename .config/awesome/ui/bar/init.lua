local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi

-- Modules
local launcher = require("ui.launcher")
local taglist = require("ui.bar.taglist")
local systray = wibox.widget.systray()
local clock = require("ui.bar.clock")
local colorscheme = require("ui.bar.colorscheme")

screen.connect_signal("request::desktop_decoration", function(s)
  s.wibox = awful.wibar {
    screen   = s,
    position = "top",
    height = dpi(40),
    border_width = dpi(5),
    border_color = beautiful.bg_normal,
    bg = beautiful.bg_normal,
    fg = beautiful.fg_normal,

    widget   = {
      -- Left
      {
        layout = wibox.layout.fixed.horizontal,
        spacing = dpi(20),

        {
          launcher,
          top = dpi(10),
          bottom = dpi(10),
          left = dpi(10),
          widget = wibox.container.margin
        },

        {
          taglist(s),
          widget = wibox.container.margin
        },
      },

      -- Middle
      {
        layout = wibox.layout.fixed.horizontal,
      },

      -- Right
      {
        layout = wibox.layout.fixed.horizontal,
        spacing = dpi(15),

        {
          systray,
          left = dpi(15),
          top = dpi(5),
          bottom = dpi(5),
          widget = wibox.container.margin
        },

        clock,

        {
          colorscheme,
          right = dpi(10),
          top = dpi(10),
          bottom = dpi(10),
          widget = wibox.container.margin
        },
      },

      layout = wibox.layout.align.horizontal,
    }
  }
end)
