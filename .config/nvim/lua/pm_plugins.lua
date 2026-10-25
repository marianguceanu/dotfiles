return {
	-- Colorscheme
	{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true },
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "navarasu/onedark.nvim", priority = 1000 },

	-- Git signs integration, very much vs code like
	{ "lewis6991/gitsigns.nvim", lazy = true },

	-- File explorer buffer
	{ "stevearc/oil.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- Extras
	{ "nvim-mini/mini.hipatterns", version = "*" },


	{ 'saghen/blink.indent' },
	-- Extras
	{ "nvim-mini/mini.comment" },
	{ "windwp/nvim-autopairs"  },
	{ "windwp/nvim-ts-autotag" },
	{ "rcarriga/nvim-notify"   },

	-- Completions
	{
		"nvim-mini/mini.completion",
		version = "*",
		config = function()
		end,
	},

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

	-- LSP 
	{ "neovim/nvim-lspconfig", lazy = false },
	{ "mason-org/mason.nvim", opts = {} },
	{
		"mason-org/mason-lspconfig.nvim",
		opts = { automatic_enable = true },
		dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
	},

	-- Language specific plugins
	{ "mrcjkb/rustaceanvim", version = "^9", lazy = false },
}
