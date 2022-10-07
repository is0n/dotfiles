local naughty = require("naughty")
local beautiful = require("beautiful")
local gears = require("gears")

-- Replace naughty w/ dunst
-- package.loaded["naughty.dbus"] = {}

-- Theme vars
naughty.config.defaults.ontop     = true
naughty.config.defaults.timeout   = 8

naughty.config.padding            = beautiful.useless_gap * 2
naughty.config.defaults.spacing   = beautiful.useless_gap * 2
naughty.config.defaults.shape     = function(cr, w, h) gears.shape.rounded_rect(cr, w, h, 0) end

naughty.config.defaults.title     = "Notification"
naughty.config.defaults.position  = "bottom_right"

naughty.config.defaults.screen    = require("awful").screen.focused()
naughty.config.defaults.margin    = beautiful.useless_gap * 3
naughty.config.defaults.width     = 300

naughty.connect_signal("request::display_error", function(message, startup)
	naughty.notification({
		urgency = "critical",
		app_name = "Awesome",
		title = "Oops, an error happened" .. (startup and " during startup!" or "!"),
		message = message,
	})
end)
