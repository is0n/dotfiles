local awful = require("awful")
local beautiful = require("beautiful")
local ruled = require("ruled")

ruled.client.connect_signal("request::rules", function()
  ruled.client.append_rule({
    rule = {},
    properties = {
      border_width = beautiful.border_width,
      border_color = beautiful.border_normal,
      focus = awful.client.focus.filter,
      raise = true,
      screen = awful.screen.preferred,
      placement = awful.placement.no_overlap+awful.placement.no_offscreen,
      callback = awful.client.setslave
    }
  })

  ruled.client.append_rule({
    rule_any = {
      type = { "normal", "dialog" }
    },

    properties = { titlebars_enabled = true }
  })

  ruled.client.append_rule({
    rule_any = {
      type = { "dock" }
    },

    properties = {
      border_width = 0,
      focusable = false
    }
  })

  ruled.client.append_rule({
    rule_any = {
      name = { "Android Emulator - Pixel_API_30:5554" },
      class = { "Android Emulator - Pixel_API_30:5554" },
      instance = { "Android Emulator - Pixel_API_30:5554" }
    },

    properties = { floating = true, titlebars_enabled = false }
  })

  ruled.client.append_rule({
    rule_any = {
      instance = { "Floating" }
    },

    properties = { floating = true, placement = awful.placement.centered }
  })
end)
