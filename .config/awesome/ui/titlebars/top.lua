local awful = require("awful")
local wibox = require("wibox")
local dpi = require("beautiful").xresources.apply_dpi

local function buttons(c)
  return {
    awful.button({ }, 1, function()
      awful.client.floating.set(c, true)
      c:activate { context = "titlebar", action = "mouse_move"  }
    end),

    awful.button({ }, 2, function()
      awful.client.floating.set(c, false)
    end),

    awful.button({ }, 3, function ()
      awful.client.floating.set(c, true)
      c:activate { context = "mouse_click", action = "mouse_resize" }
    end)
  }
end

client.connect_signal("request::titlebars", function(c)
  awful.titlebar(c, {}):setup {
    -- Left
    {
      {
        align  = "center",
        widget = awful.titlebar.widget.titlewidget(c)
      },

      left = dpi(10),
      buttons = buttons(c),
      widget = wibox.container.margin
    },

    -- Middle
    {
      buttons = buttons(c),
      layout  = wibox.layout.flex.horizontal
    },

    -- Right
    {
      {
        awful.titlebar.widget.closebutton(c),
        spacing = dpi(5),
        layout = wibox.layout.fixed.horizontal
      },

      right = dpi(10),
      margins = dpi(5),
      widget = wibox.container.margin,
    },

    layout = wibox.layout.align.horizontal
  }
end)
