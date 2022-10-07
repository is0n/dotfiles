local status_ok, staline = pcall(require, "staline")
if not status_ok then
  return
end

vim.opt.laststatus = 3
vim.cmd [[ autocmd FileType alpha set laststatus=0 | autocmd BufUnload <buffer> set laststatus=3 ]]

staline.setup {
  sections = {
    left  = { '█', 'mode', { 'StalineText', 'file_name' } },
    mid   = { 'lsp' },
    right = { { 'StalineText', 'branch' }, { 'StalineText', 'cwd' }, 'line_column', '█' }
  },

  defaults = {
    branch_symbol = " ",
    line_column   = "%l:%L"
  },
}

vim.cmd [[hi StalineText guifg=Normal guibg=NONE]]
