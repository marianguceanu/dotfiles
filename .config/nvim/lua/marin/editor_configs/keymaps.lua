local function extra_buffer_navigation()
	vim.keymap.set("n", "<C-w>.", "5<C-w>>", { noremap = true, silent = true })
	vim.keymap.set("n", "<C-w>,", "5<C-w><", { noremap = true, silent = true })
	vim.keymap.set("n", "<C-L>", "20zl", { noremap = true, silent = true })
	vim.keymap.set("n", "<C-H>", "20zh", { noremap = true, silent = true })
end
extra_buffer_navigation()

local function file_interaction()
	vim.keymap.set("n", "<leader>gb", ":Gitsign toggle_current_line_blame<CR>", { noremap = true, silent = true })
	vim.keymap.set("n", "<S-e>", ":Oil<CR>", { noremap = true, silent = true })

	vim.keymap.set("n", "<leader>cfp", function()
		local path = vim.fn.expand("%:.") -- relative to cwd
		vim.fn.setreg("+", path) -- system clipboard
		print("Copied: " .. path)
	end, { desc = "Copy relative file path" })
end
file_interaction()

local function lsp()
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
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
			vim.keymap.set({ "i", "s", "n" }, "<C-s>", vim.lsp.buf.signature_help)
			vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols)
			vim.keymap.set("n", "<leader>rr", builtin.lsp_references)
			vim.keymap.set("n", "<leader>vws", builtin.lsp_dynamic_workspace_symbols)
		end,
	})
end
lsp()

local function telescope()
	local builtin = require("telescope.builtin")

	vim.keymap.set("n", "<leader>pf", builtin.find_files)
	vim.keymap.set("n", "<leader>gf", builtin.git_files)
	vim.keymap.set("n", "<leader>ss", builtin.builtin)
	vim.keymap.set("n", "<leader>gf", builtin.git_files)
	vim.keymap.set("n", "<leader>sf", builtin.find_files)
	vim.keymap.set("n", "<leader>sh", builtin.help_tags)
	vim.keymap.set("n", "<leader>sw", builtin.grep_string)
	vim.keymap.set("n", "<leader>sg", builtin.live_grep)
	vim.keymap.set("n", "<leader>sd", builtin.diagnostics)
	vim.keymap.set("n", "<leader>ts", builtin.treesitter)
	vim.keymap.set("n", "<leader>gs", builtin.git_status)
	vim.keymap.set("n", "<leader>hl", builtin.highlights)
	vim.keymap.set("n", "<leader>gd", builtin.lsp_definitions)
	vim.keymap.set("n", "<leader><leader>", builtin.buffers)
end
telescope()
