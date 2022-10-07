local status_ok, jaq = pcall(require, "jaq-nvim")
if not status_ok then
  return
end

jaq.setup{
	cmds = {
		external = {
			markdown = "glow %",
			sh       = "./%",
		},
	},

  behavior = {
		default     = "float",
  },

	ui = {
		float = {
			border   = "rounded",
			borderhl = "NONE",
		},
	}
}

vim.api.nvim_set_keymap("n", "<Leader>r", ":Jaq float<CR>", { noremap = true, silent = true })
