function Colorscheme(colorscheme)
	if colorscheme == "gruber-darker" then
		require("gruber-darker").setup({
			bold = true, undercurl = true, underline = true,
			italic = { comments = true, folds = true, strings = false },
		})
	elseif colorscheme == "rose-pine" then
		require("rose-pine").setup({
			dim_inactive_windows = false,
			extend_background_behind_borders = true,
			enable = { terminal = true, legacy_highlights = true, migrations = true },
			styles = { bold = true, italic = false, transparency = true},
		})
	elseif colorscheme == "catppuccin" then
		require("catppuccin").setup({
			transparent_background = true,
			float = { transparent = false, solid = true },
			term_colors = true,
			dim_inactive = { enabled = false, shade = "dark", percentage = 0.15 },
		})
	elseif colorscheme == "gruvbox" then
		require("gruvbox").setup({
			italic = { strings = false },
			contrast = "hard", -- can be "hard", "soft" or empty string
			transparent_mode = true,
			bold = false,
		})
	end

	vim.cmd.colorscheme(colorscheme)
	-- vim.o.winborder = "solid"
	vim.o.termguicolors = true
end
