require("marin.editor_configs.appearance.transparency")

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
	vim.cmd.colorscheme("base16-0x96f")
	-- vim.cmd.colorscheme("retrobox")
	Transparency()
	vim.o.winborder = "single"
	vim.o.termguicolors = true
end
