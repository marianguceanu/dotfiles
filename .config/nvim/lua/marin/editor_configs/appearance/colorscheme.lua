function Colorscheme()
	require("gruber-darker").setup({
		bold = true,
		invert = {
			signs = false,
			tabline = false,
			visual = false,
		},
		italic = {
			strings = false,
			comments = true,
			operators = false,
			folds = true,
		},
		undercurl = true,
		underline = true,
	})
	vim.cmd.colorscheme("gruber-darker")

	vim.o.winborder = "single"
	vim.o.termguicolors = true
end
