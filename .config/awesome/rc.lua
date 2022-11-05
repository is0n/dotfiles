pcall(require, "luarocks.loader")

-- Theming
local beautiful = require("beautiful")
local theme_dir = require("gears").filesystem.get_configuration_dir()
beautiful.init(theme_dir .. "theme/theme.lua")

-- Error Handling
require("ui.notifs")

-- Module
require("config.bling")

-- Title bars
require("ui.titlebars")

-- Menu
require("ui.menu")

-- Bar
require("ui.bar")

-- Layouts
require("config.layouts")

-- Tags
require("config.tags")

-- Desktop
require("config.desktop")

-- Mouse Stuff
require("config.mouse")

-- Keybinds
require("config.keys")

-- Rules
require("config.rules")

-- Autostart
require("config.autostart")
