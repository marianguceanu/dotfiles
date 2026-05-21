function Colorscheme(colorscheme)
	if colorscheme == "gruber-darker" then
		require("gruber-darker").setup({
			bold = true,
			italic = { comments = true, folds = true, strings = false },
			undercurl = true,
			underline = true,
		})
	end


	if colorscheme == "rose-pine" then
		require("rose-pine").setup({
			variant = "auto",
			dark_variant = "main", -- main, moon, or dawn
			dim_inactive_windows = true,
			extend_background_behind_borders = true,
			enable = { terminal = true, legacy_highlights = true, migrations = true },
			styles = { bold = true, italic = false, transparency = false },
		})
	end

	vim.cmd.colorscheme(colorscheme)
	vim.o.winborder = "solid"
	vim.o.termguicolors = true
end
