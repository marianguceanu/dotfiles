function VSCode()
	vim.cmd.colorscheme("vscode")

	vim.keymap.set("n", "<leader>td", function()
		vim.cmd.colorscheme("darkblue")
		vim.cmd.colorscheme("vscode")
	end, opts)

	vim.keymap.set("n", "<leader>tl", function()
		vim.cmd.colorscheme("shine")
		vim.cmd.colorscheme("vscode")
	end, opts)
end
