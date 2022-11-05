local theme = {}
local dpi = require("beautiful").xresources.apply_dpi
local theme_assets = require("beautiful.theme_assets")

-- Colorscheme
local theme_name = 'paradise'
local theme_dir = require("gears").filesystem.get_configuration_dir() .. "theme/themes/" .. theme_name .. "/"
local colors = require('theme.themes.' .. theme_name)

-- UI fonts
theme.font_name           = "JetBrains Mono "
theme.font                = theme.font_name .. "10"
theme.useless_gap         = 6

-- Bg colors
theme.bg_normal           = colors.background
theme.bg_focus            = colors.altblack

-- Fg colors
theme.fg_normal           = colors.foreground
theme.fg_focus            = colors.black
theme.fg_urgent           = colors.red
theme.fg_minimize         = colors.foreground

-- Borders
theme.border_color_normal = colors.background
theme.border_color_active = colors.foreground
theme.border_width        = 1

-- Titlebar colors
theme.titlebar_bg_normal = colors.background
theme.titlebar_bg_focus  = colors.background
theme.titlebar_fg        = colors.foreground

-- Minimize button
theme.titlebar_minimize_button_normal_hover = theme_dir .. "hover.svg"
theme.titlebar_minimize_button_focus_hover  = theme_dir .. "hover.svg"
theme.titlebar_minimize_button_normal       = theme_dir .. "minimize.svg"
theme.titlebar_minimize_button_focus        = theme_dir .. "minimize.svg"

-- Maxmize button
theme.titlebar_maximized_button_normal_inactive_hover = theme_dir .. "hover.svg"
theme.titlebar_maximized_button_focus_inactive_hover  = theme_dir .. "hover.svg"
theme.titlebar_maximized_button_normal_active_hover   = theme_dir .. "hover.svg"
theme.titlebar_maximized_button_focus_active_hover    = theme_dir .. "hover.svg"
theme.titlebar_maximized_button_normal_inactive       = theme_dir .. "maximize.svg"
theme.titlebar_maximized_button_focus_inactive        = theme_dir .. "maximize.svg"
theme.titlebar_maximized_button_normal_active         = theme_dir .. "maximize.svg"
theme.titlebar_maximized_button_focus_active          = theme_dir .. "maximize.svg"

-- Close button
theme.titlebar_close_button_normal_hover = theme_dir .. "hover.svg"
theme.titlebar_close_button_focus_hover  = theme_dir .. "hover.svg"
theme.titlebar_close_button_normal       = theme_dir .. "close.svg"
theme.titlebar_close_button_focus        = theme_dir .. "close.svg"

-- Swallow windows (bling)
theme.parent_filter_list   = { "discord", "firefox", "calibre", "Chromium" }
theme.child_filter_list    = { "discord", "firefox", "calibre", "Chromium" }
theme.swallowing_filter    = true

-- Menu
theme.menu_bg_normal    = colors.background
theme.menu_bg_focus     = colors.black
theme.menu_font         = theme.font
theme.menu_border_color = colors.foreground
theme.menu_height       = dpi(30)
theme.menu_width        = dpi(130)
theme.menu_border_width = 1
theme.menu_submenu_icon = theme_dir .. "menu.svg"

-- Hotkeys
theme.hotkeys_bg               = colors.background
theme.hotkeys_fg               = colors.foreground
theme.hotkeys_modifiers_fg     = colors.foreground
theme.hotkeys_font             = theme.font_name .. "Medium 12"
theme.hotkeys_description_font = theme.font_name .. "Regular 10"
theme.hotkeys_group_margin     = dpi(50)

-- Naughty
theme.notification_spacing   = 12

-- Taglist
theme.taglist_bg_focus = colors.altblack
theme.taglist_fg_focus = colors.foreground
theme.taglist_bg_normal = colors.red
theme.taglist_fg_empty = colors.black

theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, colors.foreground, colors.background
)

return theme
