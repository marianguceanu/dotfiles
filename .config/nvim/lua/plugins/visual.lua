return {
	-- Colorschemes
	{ "blazkowolf/gruber-darker.nvim" },
	{ "rose-pine/neovim", name = "rose-pine" },
	-- Git signs integration, very much vs code like
	{ "lewis6991/gitsigns.nvim" },
	-- Nice statusline
	{ "nvim-lualine/lualine.nvim" },
	-- File explorer buffer
	{ "stevearc/oil.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- Extras
	{ "nvim-mini/mini.hipatterns", version = "*" },
	{ "folke/snacks.nvim", priority = 1000, lazy = false },
}
