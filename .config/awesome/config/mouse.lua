local awful = require("awful")
local beautiful = require("beautiful")
local mod = "Mod4"

client.connect_signal("request::default_mousebindings", function()
	awful.mouse.append_client_mousebindings({
		awful.button({}, 1, function(c)
			c:activate({ context = "mouse_click" })
		end),

		awful.button({ mod }, 1, function(c)
      awful.client.floating.set(c, true)
			c:activate({ context = "mouse_click", action = "mouse_move" })
		end),

		awful.button({ mod }, 3, function(c)
      awful.client.floating.set(c, true)
			c:activate({ context = "mouse_click", action = "mouse_resize" })
		end),
	})
end)

client.connect_signal("mouse::enter", function(c)
  c:emit_signal("request::activate", "mouse_enter", { raise = false })
end)

client.connect_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)

awful.mouse.snap.edge_enabled = false
awful.mouse.snap.client_enabled = false
