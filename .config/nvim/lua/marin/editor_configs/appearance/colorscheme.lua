require("marin.editor_configs.appearance.transparency")

function Colorscheme()
	require("base16-colorscheme").with_config({
		telescope = true,
		indentblankline = true,
		notify = true,
		ts_rainbow = true,
		cmp = true,
		illuminate = true,
		dapui = true,
	})
	vim.cmd.colorscheme("base16-black-metal-bathory")
	vim.o.winborder = "single"
	vim.o.termguicolors = true
end
