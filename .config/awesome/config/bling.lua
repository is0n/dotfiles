local bling = require("bling")
local awful = require("awful")

bling.module.window_swallowing.start()

bling.widget.tag_preview.enable {
  show_client_content = true,
  placement_fn = function(c)
    awful.placement.bottom_left(c, {
      margins = {
        bottom = 50,
        left = 20,
      },
    })
  end,
}

-- bling.widget.window_switcher.enable {
--     type = "thumbnail",
--     cycle_key = "Tab",
-- }
--
-- awful.keyboard.append_global_keybindings({
--   awful.key({ "Mod1" }, "Tab", function ()
--     awesome.emit_signal("bling::window_switcher::turn_on")
--   end, { description = "window switcher", group = "bling" })
-- })
