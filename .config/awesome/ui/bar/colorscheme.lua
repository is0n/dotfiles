local wibox = require("wibox")
local awful = require("awful")

local handle = io.popen("grep -oP 'colors: \\*\\K.*' ~/.config/alacritty/colors.yml")
local cmd = handle:read("a")

return wibox.widget {
  markup = cmd,
  align  = "center",
  valign = "center",
  widget = wibox.widget.textbox,

  buttons = {
    awful.button({ }, 1, function ()
      awful.spawn(os.getenv("HOME") .. "/.local/bin/colo", false)
    end)
  }
}
