function Moonfly()
	vim.cmd.colorscheme("moonfly")

	vim.keymap.set("n", "<leader>td", function()
		vim.cmd.colorscheme("moonfly")
	end, opts)

	vim.keymap.set("n", "<leader>tl", function()
		vim.cmd.colorscheme("shine")
	end, opts)
end
