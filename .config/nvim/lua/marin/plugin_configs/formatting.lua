require("conform").setup({
	formatters_by_ft = {
		javascript = { "biome" },
		javascriptreact = { "biome" },
		typescript = { "biome" },
		typescriptreact = { "biome" },
	},

	format_on_save = {
		lsp_fallback = true,
		async = false,
		timeout_ms = 2000,
	},
})
