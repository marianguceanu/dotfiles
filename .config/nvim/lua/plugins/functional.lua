return {
	-- Extras
	{ "nvim-mini/mini.comment" },
	{ "windwp/nvim-autopairs" },
	{ "windwp/nvim-ts-autotag" },

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
	},

	-- Code actions (through telescope)
	{
		"rachartier/tiny-code-action.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		event = "LspAttach",
		lazy = true,
	},
	-- Language specific plugins
	{ "mrcjkb/rustaceanvim", version = "^9", lazy = false },
}
