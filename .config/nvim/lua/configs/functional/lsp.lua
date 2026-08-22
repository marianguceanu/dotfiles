-- LSP store (mason) and attaching it to buffers
function LSP()
	vim.lsp.config("lua_ls", {})
	vim.lsp.enable({
		"lua_ls",
		"clangd",
	})
end
