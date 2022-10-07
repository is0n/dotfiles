local awful = require("awful")

function pgrep(pattern, cmd)
  local pgrep = io.popen("pgrep -f " .. pattern)
  local output = pgrep:read("a")
  local exit_code = pgrep:close()

  if exit_code then
    return
  end

  cmd = cmd:gsub("~", os.getenv("HOME"))
  cmd = cmd:gsub("$HOME", os.getenv("HOME"))

  awful.spawn(cmd, false)
end

pgrep("alttab", "alttab -w 1")
pgrep("eww", "~/.local/bin/vbar open")

function exec(cmd)
  cmd = cmd:gsub("~", os.getenv("HOME"))
  cmd = cmd:gsub("$HOME", os.getenv("HOME"))

  awful.spawn(cmd, false)
end

exec("~/.local/bin/wallpaper -R")
