-- Custom commands
vim.api.nvim_create_user_command("FormatDisable", function()
	vim.b.disable_autoformat = true
end, {})

vim.api.nvim_create_user_command("FormatEnable", function()
	vim.b.disable_autoformat = false
end, {})
