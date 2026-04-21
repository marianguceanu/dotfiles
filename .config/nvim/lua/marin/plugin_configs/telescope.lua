require("telescope").setup({
	defaults = {
		layout_config = {
			prompt_position = "top",
			width = 0.85,
			height = 0.99,
			preview_width = 0.5,
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
vim.keymap.set("n", "<leader>hl", builtin.highlights)
vim.keymap.set("n", "gd", builtin.lsp_definitions)
vim.keymap.set("n", "<leader><leader>", builtin.buffers, {})
vim.keymap.set("n", "<leader>vws", builtin.lsp_dynamic_workspace_symbols)
