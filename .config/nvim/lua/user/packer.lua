local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	print("Installing packer close and reopen Neovim...")
end

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "packer.lua" },
  command = [[source <afile> | PackerSync]],
})

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init({
	display = {
		open_fn = function()
			return require('packer.util').float({ border = 'rounded' })
		end
	}
}
)

return require("packer").startup(
	function(use)

		-- Packer can manage itself
		use { "wbthomason/packer.nvim" }

		-- Colorscheme
    use { "norcalli/nvim-base16.lua" }

    -- UI
    use { "noib3/nvim-cokeline", requires = { "kyazdani42/nvim-web-devicons" } }
    use { "tamton-aquib/staline.nvim", requires = { "kyazdani42/nvim-web-devicons" } }

    -- Snippets
    use { "L3MON4D3/LuaSnip" }
    use { "rafamadriz/friendly-snippets" }

    -- Auto-completion
    use { "hrsh7th/nvim-cmp" }
    use { "hrsh7th/cmp-nvim-lsp" }
    use { "saadparwaiz1/cmp_luasnip" }
    use { "hrsh7th/cmp-buffer" }
    use { "hrsh7th/cmp-path" }

    -- LSP
		use { "neovim/nvim-lspconfig" }
    use { "williamboman/nvim-lsp-installer" }

    -- Treeshitter
		use { "nvim-treesitter/nvim-treesitter", run = { ":TSUpdate" } }
		use { "p00f/nvim-ts-rainbow", requires = { "nvim-treesitter/nvim-treesitter" } }
		use { "m-demare/hlargs.nvim", requires = { "nvim-treesitter/nvim-treesitter" } }
    use { "haringsrob/nvim_context_vt", requires = { "nvim-treesitter/nvim-treesitter" } }

    -- Language support
    use { "elkowar/yuck.vim" }
    use { "davidgranstrom/nvim-markdown-preview" }

    -- Color preview
		use { "NvChad/nvim-colorizer.lua" }

    -- Lots o' Stuff
    use { "echasnovski/mini.nvim" }

    -- Auto pairs
    use { "windwp/nvim-autopairs" }

    -- Start screen
    use { "goolord/alpha-nvim", requires = { "kyazdani42/nvim-web-devicons" } }

    -- Powerful fuzzy finder
		use { "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } } }

		-- Local plugins
    use { "~/Programming/lua/neovim/tui-nvim/" }
		use { "~/Programming/lua/neovim/jaq-nvim/" }

		if PACKER_BOOTSTRAP then
			require("packer").sync()
		end

	end
)
