-- All the plugins that do something automatically
function Auto()
	-- Tag closing, most useful in HTML
	require("nvim-ts-autotag").setup({
		opts = { enable_close = true, enable_rename = true } })

	-- Pairs
	require("nvim-autopairs").setup({})

	-- Comment shortcut on 'gc' bind
	require("mini.comment").setup()

end
