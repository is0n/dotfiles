local status_ok, dashboard = pcall(require, "alpha.themes.dashboard")
if not status_ok then
  return
end

local handle
handle = io.popen('date +%a," "%b" "%d')
local date = handle:read("*l")
handle = io.popen('ls "$HOME/.local/share/nvim/site/pack/packer/start" | wc -l')
local plugins = handle:read("l")
handle:close()

dashboard.section.header.val = {
  " ███    ██  ██    ██  ██  ███    ███ ",
  " ████   ██  ██    ██  ██  ████  ████ ",
  " ██ ██  ██  ██    ██  ██  ██ ████ ██ ",
  " ██  ██ ██   ██  ██   ██  ██  ██  ██ ",
  " ██   ████    ████    ██  ██      ██ ",
  "",
  "     ╭─────────────────────────╮     ",
  "     │                         │     ",
  "     │   Today's " .. date .. "  │     ",
  "     │                         │     ",
  "     │   " .. plugins .. " plugins in total  │     ",
  "     │                         │     ",
  "     ╰─────────────────────────╯     "
}

dashboard.section.buttons.val = {
  dashboard.button("e", "  New File ", "<cmd>enew<CR>"),
  dashboard.button("f", "  Find File", "<cmd>Telescope find_files<CR>"),
	dashboard.button("g", "  Find Word", "<cmd>Telescope live_grep<CR>"),
  dashboard.button("h", "  File Hist", "<cmd>Telescope oldfiles<CR>"),
  dashboard.button("q", "  Quit nvim", "<cmd>qa<CR>"),
}

dashboard.section.footer.val = require("alpha.fortune")

dashboard.section.buttons.opts.hl = "Function"
dashboard.section.footer.opts.hl = "Function"
dashboard.section.header.opts.hl = "Function"

require("alpha").setup(dashboard.opts)
