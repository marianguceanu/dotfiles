vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local bufmap = function(mode, rhs, lhs)
			vim.keymap.set(mode, rhs, lhs, { buffer = event.buf })
		end

		bufmap("n", "<leader>K", "<cmd>lua vim.lsp.buf.hover()<cr>")
		bufmap("n", "<leader>rr", "<cmd>lua vim.lsp.buf.references()<cr>")
		bufmap("n", "<leader>ri", "<cmd>lua vim.lsp.buf.implementation()<cr>")
		bufmap("n", "<leader>rt", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
		bufmap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>")
		bufmap("n", "<leader>ra", "<cmd>lua vim.lsp.buf.code_action()<cr>")
		bufmap("n", "<leader>e", "<cmd> lua vim.diagnostic.open_float()<cr>")
		bufmap("n", "gO", "<cmd>lua vim.lsp.buf.document_symbol()<cr>")
		bufmap({ "i", "s", "n" }, "<C-s>", "<cmd>lua vim.lsp.buf.signature_help()<cr>")
		bufmap("n", "<leader>vws", "<cmd>lua vim.lsp.buf.workspace_symbol()<cr>")
	end,
})
vim.lsp.config("luals", {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { ".luarc.json", ".luarc.jsonc" },
})
vim.lsp.enable("luals")

require("mason-lspconfig").setup({
	handlers = {
		vim.lsp.config,
	},
})

local gen_loader = require("mini.snippets").gen_loader
require("mini.snippets").setup({
	snippets = {
		-- Load custom file with global snippets first (adjust for Windows)
		gen_loader.from_file("~/.config/nvim/snippets/global.json"),

		-- Load snippets based on current language by reading files from
		-- "snippets/" subdirectories from 'runtimepath' directories.
		gen_loader.from_lang(),
	},
})
