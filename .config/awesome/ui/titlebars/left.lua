local awful = require("awful")
local wibox = require("wibox")
local dpi = require("beautiful").xresources.apply_dpi

client.connect_signal("request::titlebars", function(c)
  local buttons = {
    awful.button({ }, 1, function()
      awful.client.floating.set(c, true)
      c:activate { context = "titlebar", action = "mouse_move"  }
    end),

    awful.button({ }, 3, function ()
      awful.client.floating.set(c, true)
      c:activate { context = "mouse_click", action = "mouse_resize"}
    end)
  }

  awful.titlebar(c, { position = "left" }):setup {
    {
      {
        awful.titlebar.widget.closebutton(c),
        awful.titlebar.widget.maximizedbutton(c),
        awful.titlebar.widget.minimizebutton(c),
        spacing = dpi(5),
        layout = wibox.layout.fixed.vertical
      },

      top = dpi(5),
      margins = dpi(5),
      widget = wibox.container.margin
    },

    {
      buttons = buttons,
      layout = wibox.layout.align.vertical
    },

    {
      {
        awful.titlebar.widget.iconwidget(c),
        layout  = wibox.layout.fixed.horizontal
      },

      bottom = dpi(5),
      margins = dpi(5),

      buttons = {
        awful.button({ }, 1, function() c.sticky = not c.sticky c.ontop = not c.ontop end)
      },

      widget = wibox.container.margin
    },

    layout = wibox.layout.align.vertical
  }
end)
