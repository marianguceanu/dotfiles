require("conform").setup({
	formatters_by_ft = {
		javascript = { "biome" },
		javascriptreact = { "biome" },
		typescript = { "biome" },
		typescriptreact = { "biome" },
		lua = { "stylua" },
		yaml = {},
	},

	format_on_save = {
		lsp_fallback = false,
		async = false,
		timeout_ms = 2000,
	},
})
