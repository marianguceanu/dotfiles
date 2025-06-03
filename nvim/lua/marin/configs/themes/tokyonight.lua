function TokyoNight()
	vim.cmd([[colorscheme tokyonight-night]])

	vim.keymap.set("n", "<leader>td", function()
		vim.cmd([[colorscheme tokyonight-night]])
	end, opts)

	vim.keymap.set("n", "<leader>tl", function()
		vim.cmd([[colorscheme tokyonight-day]])
	end, opts)
end
