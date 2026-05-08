-- LSP manager
require("mason").setup({})

-- Attaching the LSP's from the manager to neovim
require("mason-lspconfig").setup({
	handlers = {
		vim.lsp.config,
	},
})
