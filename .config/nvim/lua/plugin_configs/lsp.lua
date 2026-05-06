-- LSP manager
require("mason").setup({})

-- Attaching the LSP's from the manager to neovim
require("mason-lspconfig").setup({
	handlers = {
		vim.lsp.config,
	},
})

-- Formatting
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
