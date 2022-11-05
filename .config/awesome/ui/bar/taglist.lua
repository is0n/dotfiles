local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local dpi = require("beautiful").xresources.apply_dpi

return function(s)
  s.taglist = awful.widget.taglist {
    screen = s,
    filter = awful.widget.taglist.filter.all,
    buttons = {
      awful.button({ }, 1, function(t) t:view_only() end)
    },

    style   = {
      shape = gears.shape.circle
    },

    layout  = {
      spacing = dpi(2),
      layout  = wibox.layout.fixed.horizontal
    },

    widget_template = {
      {
        {
          id = "text_role",
          widget = wibox.widget.textbox,
        },

        left = dpi(10),
        right = dpi(10),
        widget = wibox.container.margin,
      },

      id = "background_role",
      widget = wibox.container.background,
    },
  }

  return s.taglist
end
