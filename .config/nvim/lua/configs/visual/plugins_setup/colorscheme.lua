function Colorscheme(colorscheme)
	if colorscheme == "gruber-darker" then
		require("gruber-darker").setup({
			bold = true,
			italic = { comments = true, folds = true },
			undercurl = true,
			underline = true,
		})
	end

	if colorscheme == "catppuccin" then
		require("catppuccin").setup({
			flavour = "auto",
			background = { light = "latte", dark = "mocha" },
			float = { transparent = false, solid = true },
			term_colors = true,
			styles = { comments = { "italic" } },
		})
	end

	vim.cmd.colorscheme(colorscheme)
	vim.o.winborder = "solid"
	vim.o.termguicolors = true
end
