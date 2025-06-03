function OneDark()
	local theme_opts = {
		style = "dark", -- 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
		transparent = false,
		term_colors = true,
		ending_tildes = false,
		cmp_itemkind_reverse = false,

		code_style = {
			comments = "italic",
			keywords = "bold",
			functions = "bold",
			strings = "none",
			variables = "none",
		},
		diagnostics = {
			darker = true,
			undercurl = true,
			background = true,
		},
	}
	local function theme_setup_load()
		require("onedark").setup(theme_opts)
		require("onedark").load()
	end
	theme_setup_load()


	vim.keymap.set("n", "<leader>td", function()
		theme_opts.style = "dark"
		theme_setup_load()
	end, opts)

	vim.keymap.set("n", "<leader>tl", function()
		theme_opts.style = "light"
		theme_setup_load()
	end, opts)
end
