return {
	-- Git signs integration, very much vs code like
	{ "lewis6991/gitsigns.nvim", lazy = true },

	-- File explorer buffer
	{ "stevearc/oil.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- Extras
	{ "nvim-mini/mini.hipatterns", version = "*" },
	{ "folke/snacks.nvim", priority = 1000, lazy = false },
}
