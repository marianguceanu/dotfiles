-- More keymaps for interacting with the buffers
function File_Interaction()
	vim.keymap.set("n", "<leader>gb", ":Gitsign toggle_current_line_blame<CR>", { noremap = true, silent = true })
	vim.keymap.set("n", "<S-e>", ":Oil<CR>", { noremap = true, silent = true })
	vim.keymap.set("n", "<leader>mdt", ":Markview splitToggle<CR>", { noremap = true, silent = true })

	vim.keymap.set("n", "<leader>cfp", function()
		local path = vim.fn.expand("%:.") -- relative to cwd
		vim.fn.setreg("+", path) -- system clipboard
		print("Copied: " .. path)
	end, { desc = "Copy relative file path" })
end
