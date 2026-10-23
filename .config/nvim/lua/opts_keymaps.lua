-- Extra buffer navigation
vim.keymap.set("n", "<C-w>.", "5<C-w>>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-w>,", "5<C-w><", { noremap = true, silent = true })
vim.keymap.set("n", "<C-L>", "20zl", { noremap = true, silent = true })
vim.keymap.set("n", "<C-H>", "20zh", { noremap = true, silent = true })

-- File interactions
vim.keymap.set("n", "<leader>gb", ":Gitsign toggle_current_line_blame<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-e>", ":Oil<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>mdt", ":Markview splitToggle<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>cfpa", function()
	vim.fn.setreg("+", vim.fn.expand("%:p"))
end, { desc = "Copy full path" })

vim.keymap.set("n", "<leader>cfpr", function()
	vim.fn.setreg("+", vim.fn.expand("%:."))
end, { desc = "Copy relative path" })

vim.keymap.set({ "n", "v" }, "<leader>yc", '"+y', { desc = "Yank to clipboard" })

-- LSP interactions
-- Using telescope for some lsp capabilities because it offers previews
local telescope_builtin = require("telescope.builtin")
local tinyca = require("tiny-code-action")

vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "<leader>rt", vim.lsp.buf.type_definition)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>ca", tinyca.code_action)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
vim.keymap.set({ "i", "s", "n" }, "<C-s>", vim.lsp.buf.signature_help)
vim.keymap.set("n", "<leader>ds", telescope_builtin.lsp_document_symbols)
vim.keymap.set("n", "<leader>rr", telescope_builtin.lsp_references)
vim.keymap.set("n", "<leader>vws", telescope_builtin.lsp_dynamic_workspace_symbols)

-- Other telescope capabilities
vim.keymap.set("n", "<leader>pf", telescope_builtin.find_files)
vim.keymap.set("n", "<leader>gf", telescope_builtin.git_files)
vim.keymap.set("n", "<leader>ss", telescope_builtin.builtin)
vim.keymap.set("n", "<leader>gf", telescope_builtin.git_files)
vim.keymap.set("n", "<leader>sf", telescope_builtin.find_files)
vim.keymap.set("n", "<leader>sh", telescope_builtin.help_tags)
vim.keymap.set("n", "<leader>sw", telescope_builtin.grep_string)
vim.keymap.set("n", "<leader>sg", telescope_builtin.live_grep)
vim.keymap.set("n", "<leader>sd", telescope_builtin.diagnostics)
vim.keymap.set("n", "<leader>ts", telescope_builtin.treesitter)
vim.keymap.set("n", "<leader>gs", telescope_builtin.git_status)
vim.keymap.set("n", "<leader>hl", telescope_builtin.highlights)
vim.keymap.set("n", "<leader><leader>", telescope_builtin.buffers)
