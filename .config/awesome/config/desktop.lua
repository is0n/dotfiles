local awful = require("awful")
require("awful.autofocus")

client.connect_signal("manage",
  function (c)
    if awesome.startup
      and not c.size_hints.user_position
      and not c.size_hints.program_position then
      awful.placement.no_offscreen(c)
    end
  end
)

-- Preserve Floating Windows
require("mods.preserve_floats")

-- Preserve Tag
require("mods.preserve_tag")
