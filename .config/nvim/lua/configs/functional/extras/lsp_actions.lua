-- Keymaps for using LSP to full capacity
function LSP_Actions()
	vim.api.nvim_create_autocmd("LspAttach", {
		callback = function()
			-- Using telescope for some lsp capabilities because it offers previews
			local builtin = require("telescope.builtin")
			local tinyca = require("tiny-code-action")

			vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover)
			vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation)
			vim.keymap.set("n", "<leader>rt", vim.lsp.buf.type_definition)
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
			vim.keymap.set("n", "<leader>ca", tinyca.code_action)
			vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
			vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration)
			vim.keymap.set({ "i", "s", "n" }, "<C-s>", vim.lsp.buf.signature_help)
			vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols)
			vim.keymap.set("n", "<leader>rr", builtin.lsp_references)
			vim.keymap.set("n", "<leader>gd", builtin.lsp_definitions)
			vim.keymap.set("n", "<leader>vws", builtin.lsp_dynamic_workspace_symbols)
		end,
	})
end
