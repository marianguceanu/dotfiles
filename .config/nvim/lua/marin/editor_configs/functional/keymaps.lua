function Keymaps()
	vim.keymap.set("n", "<C-w>.", "5<C-w>>", { noremap = true, silent = true })
	vim.keymap.set("n", "<C-w>,", "5<C-w><", { noremap = true, silent = true })
	vim.keymap.set("n", "<C-L>", "20zl", { noremap = true, silent = true })
	vim.keymap.set("n", "<C-H>", "20zh", { noremap = true, silent = true })

	vim.keymap.set("n", "<leader>gb", ":Gitsign toggle_current_line_blame<CR>", { noremap = true, silent = true })
	vim.keymap.set("n", "<S-e>", ":Oil<CR>", { noremap = true, silent = true })
end
