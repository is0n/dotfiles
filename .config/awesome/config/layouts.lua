local awful = require("awful")
local bling = require("bling")

awful.layout.layouts = {
  awful.layout.suit.spiral.dwindle,
  bling.layout.centered,
  awful.layout.suit.floating,
}
