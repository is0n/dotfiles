local awful = require("awful")
local wibox = require("wibox")
local dpi = require("beautiful").xresources.apply_dpi
local gears = require("gears")
local beautiful = require("beautiful")

function taglist(s)
  return awful.widget.taglist {
    screen  = s,
    filter  = awful.widget.taglist.filter.all,
    buttons = {
      awful.button({}, 1, function(t)
        t:view_only()
      end)
    },

    style   = {
      shape = gears.shape.circle
    },

    widget_template = {
      {
        {
          id = "text_role",
          widget = wibox.widget.textbox,
        },

        left = 7,
        right = 7,
        widget = wibox.container.margin,
      },

      id = "background_role",
      widget = wibox.container.background,

      create_callback = function(self, c3)
        self:connect_signal("mouse::enter", function()
          if #c3:clients() > 0 then
            awesome.emit_signal("bling::tag_preview::update", c3)
            awesome.emit_signal("bling::tag_preview::visibility", s, true)
          end
        end)
        self:connect_signal("mouse::leave", function()
          awesome.emit_signal("bling::tag_preview::visibility", s, false)

          if self.has_backup then
            self.bg = self.backup
          end
        end)
      end,
    },

    -- layout  = {
    --   spacing = 10,
    --   layout  = wibox.layout.fixed.horizontal
    -- }
  }
end

return taglist
