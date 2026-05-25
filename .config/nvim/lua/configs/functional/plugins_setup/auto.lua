-- All the plugins that do something automatically
function Auto()
	-- Tag closing, most useful in HTML
	require("nvim-ts-autotag").setup({
		opts = {
			enable_close = true,
			enable_rename = true,
		},
	})

	-- Pairs
	require("nvim-autopairs").setup({})

	-- Comment shortcut on 'gc' bind
	require("mini.comment").setup()

	-- Formatting on save
	require("conform").setup({
		formatters_by_ft = {
			javascript = { "biome" },
			javascriptreact = { "biome" },
			typescript = { "biome" },
			typescriptreact = { "biome" },
			lua = {},
			yaml = {},
		},

		format_on_save = {
			lsp_fallback = false,
			async = false,
			timeout_ms = 2000,
		},
	})
end
