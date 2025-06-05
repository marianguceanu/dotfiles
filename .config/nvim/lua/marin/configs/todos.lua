vim.keymap.set("n", "]t", function()
	require("todo-comments").jump_next({ keywords = { "ERROR", "WARNING", "BUG", "TODO", "FIX" } })
end, { desc = "Most used todos" })

vim.keymap.set("n", "[t", function()
	require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })
