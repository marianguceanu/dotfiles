function Colorscheme()
	require("base16-colorscheme").with_config({
		telescope = false,
		indentblankline = false,
		notify = false,
		ts_rainbow = false,
		cmp = false,
		illuminate = false,
		dapui = false,
	})
	vim.cmd.colorscheme("base16-material-darker")

	--[[ vim.cmd.colorscheme("ron")
	require("marin.editor_configs.appearance.transparency")
	Transparency() ]]

	vim.o.winborder = "single"
	vim.o.termguicolors = true
end
