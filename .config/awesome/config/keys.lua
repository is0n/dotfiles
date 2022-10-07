local awful = require("awful")
local bling = require("bling")

local mod   = "Mod4"
local alt   = "Mod1"
local ctrl  = "Control"
local shift = "Shift"
local hyper = "Mod3"

awful.keyboard.append_global_keybindings({
  awful.key({ mod, shift }, "t", function()
    awful.layout.set(awful.layout.suit.spiral.dwindle)
  end, { description = "set dwindle layout", group = "layout" }),

  awful.key({ mod, shift }, "f", function()
    awful.layout.set(awful.layout.suit.floating)
  end, { description = "set floating layout", group = "layout" }),

  awful.key({ mod, shift }, "c", function()
    awful.layout.set(bling.layout.centered)
  end, { description = "set floating layout", group = "layout" }),

  awful.key({ mod }, "c", function()
    awful.placement.centered(client.focus)
  end, { description = "center client", group = "client" }),

  awful.key({ mod }, "k", function()
    awful.client.focus.bydirection("up")
  end, { description = "focus up", group = "client" }),

  awful.key({ mod }, "j", function()
    awful.client.focus.bydirection("down")
  end, { description = "focus down", group = "client" }),

  awful.key({ mod }, "h", function()
    awful.client.focus.bydirection("left")
  end, { description = "focus left", group = "client" }),

  awful.key({ mod }, "l", function()
    awful.client.focus.bydirection("right")
  end, { description = "focus right", group = "client" }),

  awful.key({ mod, ctrl }, "k", function ()
    awful.client.swap.bydirection("up")
  end, { description = "swap up", group = "client" }),

  awful.key({ mod, ctrl }, "j", function ()
    awful.client.swap.bydirection("down")
  end, { description = "swap down", group = "client" }),

  awful.key({ mod, ctrl }, "h", function ()
    awful.client.swap.bydirection("left")
  end, { description = "swap left", group = "client" }),

  awful.key({ mod, ctrl }, "l", function ()
    awful.client.swap.bydirection("right")
  end, { description = "swap right", group = "client" }),

  awful.key({ mod, ctrl }, "r",
    awesome.restart,
    { description = "reload awesome", group = "awesome" }),

  awful.key({ mod, ctrl }, "space",
    awful.client.floating.toggle,
    { description = "toggle floating", group = "client" }),

  awful.key({ mod }, "f", function()
    client.focus.fullscreen = not client.focus.fullscreen
    client.focus:raise()
  end),

  awful.key({ mod }, "q", function ()
    client.focus:kill()
  end, { description = "close", group = "client" }),

  awful.key({ mod, shift}, "h", function ()
    awful.placement.top_left(client.focus, { margins = 12 })
  end, { description = "snap to top left", group = "snap" }),

  awful.key({ mod, shift}, "l", function ()
    awful.placement.top_right(client.focus, { margins = 12 })
  end, { description = "snap to top right", group = "snap" }),

  awful.key({ mod, shift}, "j", function ()
    awful.placement.bottom_left(client.focus, { margins = 12 })
  end, { description = "snap to bottom left", group = "snap" }),

  awful.key({ mod, shift}, "k", function ()
    awful.placement.bottom_right(client.focus, { margins = 12 })
  end, { description = "snap to bottom right", group = "snap" })
})

awful.keyboard.append_global_keybindings({
  awful.key({
    modifiers = { mod },
    keygroup = "numrow",
    description = "move to tag",
    group = "tags",
    on_press = function(index)
      local screen = awful.screen.focused()
      local tag = screen.tags[index]
      if tag then
        tag:view_only()
      end
    end,
  }),

  awful.key({
    modifiers = { mod, shift },
    keygroup = "numrow",
    description = "move focused client to tag",
    group = "tags",
    on_press = function(index)
      if client.focus then
        local tag = client.focus.screen.tags[index]
        if tag then
          client.focus:move_to_tag(tag)
        end
      end
    end,
  }),

  awful.key({
    modifiers = { hyper },
    keygroup = "numrow",
    description = "move focused client to tag and move to tag",
    group = "tags",
    on_press = function(index)
      if client.focus then
        local tag = client.focus.screen.tags[index]
        if tag then
          client.focus:move_to_tag(tag)
        end
      end

      local screen = awful.screen.focused()
      local tag = screen.tags[index]
      if tag then
        tag:view_only()
      end
    end,
  })
})
