local naughty = require("naughty")
local wibox = require("wibox")
local beautiful = require("beautiful")
local dpi = require("beautiful").xresources.apply_dpi
local ruled = require("ruled")
local clock = wibox.widget.textclock('%H:%M')

-- Theme vars
naughty.config.defaults.ontop     = true
naughty.config.defaults.title     = "Notification"
naughty.config.defaults.position  = "bottom_right"

ruled.notification.connect_signal('request::rules', function()
  -- Critical
  ruled.notification.append_rule {
    rule       = { urgency = 'critical' },
    properties = { bg = beautiful.bg_normal, border_color = beautiful.fg_urgent, timeout = 0 }
  }

  -- Normal
  ruled.notification.append_rule {
    rule       = { urgency = 'normal' },
    properties = { bg = beautiful.bg_normal, fg = beautiful.fg_normal, timeout = 5 }
  }

  -- Low
  ruled.notification.append_rule {
    rule       = { urgency = 'low' },
    properties = { bg = beautiful.bg_normal, fg = beautiful.fg_normal, timeout = 5 }
  }
end)

naughty.connect_signal("request::display_error", function(message, startup)
  naughty.notification({
    urgency = "critical",
    app_name = "Awesome",
    title = "Oops, an error happened" .. (startup and " during startup!" or "!"),
    message = message,
  })
end)

naughty.connect_signal("request::display", function(n)
  naughty.layout.box {
    notification = n,
    type = "notification",

    widget_template = {
      {
        {
          {
            {
              {
                {
                  widget = naughty.widget.title,
                  align = "left"
                },

                {
                  widget = clock,
                  align = "right"
                },

                layout = wibox.layout.align.horizontal
              },

              forced_height = dpi(35),
              left = dpi(15),
              right = dpi(15),
              widget = wibox.container.margin,

            },

            bg = beautiful.bg_focus,
            widget = wibox.container.background
          },

          strategy = "min",
          width = dpi(300),
          widget = wibox.container.constraint
        },

        {
          {
            {
              naughty.widget.message,
              left = dpi(15),
              right = dpi(15),
              top = dpi(15),
              bottom = dpi(15),
              widget = wibox.container.margin
            },

            strategy = "min",
            height = dpi(60),
            widget = wibox.container.constraint
          },

          strategy = "max",
          width = dpi(400),
          widget = wibox.container.constraint
        },

        layout = wibox.layout.align.vertical
      },

      id = "background_role",
      widget = naughty.container.background
    }
  }
end)
