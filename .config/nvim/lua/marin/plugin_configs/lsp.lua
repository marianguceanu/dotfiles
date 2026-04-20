vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local bufmap = function(mode, rhs, lhs)
			vim.keymap.set(mode, rhs, lhs, { buffer = event.buf })
		end

		bufmap("n", "<leader>K", function()
			vim.lsp.buf.hover()
		end)
		bufmap("n", "<leader>gi", function()
			vim.lsp.buf.implementation()
		end)
		bufmap("n", "<leader>rt", function()
			vim.lsp.buf.type_definition()
		end)
		bufmap("n", "<leader>rn", function()
			vim.lsp.buf.rename()
		end)
		bufmap("n", "<leader>ca", function()
			vim.lsp.buf.code_action()
		end)
		bufmap("n", "<leader>e", function()
			vim.diagnostic.open_float()
		end)
		bufmap("n", "gD", function()
			vim.lsp.buf.declaration()
		end)
		bufmap({ "i", "s", "n" }, "<C-s>", function()
			vim.lsp.buf.signature_help()
		end)
	end,
})

require("mason-lspconfig").setup({
	handlers = {
		vim.lsp.config,
	},
})
