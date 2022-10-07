local awful = require("awful")
local gears = require("gears")
local bling = require("bling")
local hotkeys_popup = require("awful.hotkeys_popup")
local beautiful = require("beautiful")

local layouts = {
  { "Dwindle", function() awful.layout.set(awful.layout.suit.spiral.dwindle) end },
  { "Centered", function() awful.layout.set(bling.layout.centered) end },
  { "Floating", function() awful.layout.set(awful.layout.suit.spiral.floating) end }
}

local awesome= {
  { "Hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
  { "Restart", awesome.restart }
}

local system = {
  { "Shutdown", "systemctl poweroff" },
  { "Reboot", "systemctl reboot" },
  { "Lock", "lock" },
  { "Sleep", "lock suspend" },
  { "Logout", "killall awesome" }
}

local menu = awful.menu({
  items = {
    { "Awesome", awesome, beautiful.awesome_icon },
    { "Layouts", layouts },
    { "System", system },
    { "Browser", "firefox" },
    { "Terminal", "floating zsh" },
    { "Editor", "floating nvim" },
    { "Files", "floating ~/.config/lf/startlf" },
    { "Music", "floating 'pgrep spotifyd || spotifyd & spt'" },
    { "Monitor", "floating htop" }
  }
})

menu.wibox.shape = function(cr, w, h) gears.shape.rounded_rect(cr, w, h, 0) end

client.connect_signal("request::default_mousebindings", function()
  awful.mouse.append_global_mousebindings({
    awful.button({}, 3, function()
      menu:toggle()
    end),
    awful.button({}, 1, function()
      menu:hide()
    end)
  })
end)
