require("telescope").setup({
	defaults = {
		border = true,
		borderchars = {
			"─", -- top
			"│", -- right
			"─", -- bottom
			"│", -- left
			"┌", -- top-left
			"┐", -- top-right
			"┘", -- bottom-right
			"└", -- bottom-left
		},
		-- borderchars = {"█","█","█","█","█","█","█","█",},
		winblend = 0,
		layout_config = {
			prompt_position = "top",
			width = 0.9,
		},
		sorting_strategy = "ascending",

		mappings = {
			i = {
				["<C-u>"] = false,
				["<C-d>"] = false,
			},
		},
	},
})

pcall(require("telescope").load_extension, "fzf")

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
vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols)
vim.keymap.set("n", "<leader>rr", builtin.lsp_references)
vim.keymap.set("n", "<leader><leader>", builtin.buffers, {})
vim.keymap.set("n", "<leader>vws", builtin.lsp_dynamic_workspace_symbols)
vim.keymap.set("n", "<leader>/", function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 0,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer" })

vim.keymap.set("n", "gd", builtin.lsp_definitions)
