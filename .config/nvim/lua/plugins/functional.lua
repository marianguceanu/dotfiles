return {
	-- LSP config plugins
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "neovim/nvim-lspconfig" },

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "neovim-treesitter/treesitter-parser-registry" },
		lazy = false,
		build = ":TSUpdate",
	},

	-- Completion plugin
	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets" },
		version = "1.*",
		opts_extend = { "sources.default" },
	},

	-- File formatting
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
	},

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
		dependencies = {
			{ "nvim-telescope/telescope.nvim" },
		},
		event = "LspAttach",
	},
}
