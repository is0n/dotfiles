local status_ok, tui = pcall(require, "tui-nvim")
if not status_ok then
  return
end

function Lf()
  tui:new {
    cmd = "~/.config/lf/startlf -selection-path /tmp/tui-nvim " .. vim.fn.fnameescape(vim.fn.expand("%:p")),
  }
end

-- Create commands
vim.cmd [[ command! Lf :lua Lf() ]]

-- Set mappings
vim.api.nvim_set_keymap("n", "<Leader>l", ":Lf<CR>", { noremap = true, silent = true })

-- Replace netrw
-- vim.api.nvim_create_autocmd({ "VimEnter" }, {
--   pattern = { "*" },
--   command = [[sil! au! FileExplorer *]]
-- })
--
-- vim.api.nvim_create_autocmd({ "BufEnter" }, {
--   pattern = { "*" },
--   command = [[if isdirectory(expand('%')) | exe 'Lf' | endif]]
-- })
