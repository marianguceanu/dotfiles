return {
	-- Colorschemes
	{ "blazkowolf/gruber-darker.nvim", lazy = true },
	{ "rose-pine/neovim", name = "rose-pine", lazy = true },
	{
		"zenbones-theme/zenbones.nvim",
		dependencies = "rktjmp/lush.nvim",
		priority = 1000,
	},

	-- Git signs integration, very much vs code like
	{ "lewis6991/gitsigns.nvim", lazy = true },

	-- Nice statusline
	{ "nvim-lualine/lualine.nvim" },

	-- File explorer buffer
	{ "stevearc/oil.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- Markdown previewer
	{ "OXY2DEV/markview.nvim", lazy = false },

	-- Extras
	{ "nvim-mini/mini.hipatterns", version = "*" },
	{ "folke/snacks.nvim", priority = 1000, lazy = false },
}
