require("marin.editor_configs.appearance.transparency")

function Colorscheme()
	vim.cmd.colorscheme("default")
	Transparency()
	vim.o.winborder = "single"
	vim.o.termguicolors = true
end
