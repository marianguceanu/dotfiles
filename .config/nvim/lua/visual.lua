-- Plugins
require("configs.visual.plugins_setup.gitsigns")
require("configs.visual.plugins_setup.colorscheme")
require("configs.visual.plugins_setup.lualine")
require("configs.visual.plugins_setup.oil")
require("configs.visual.plugins_setup.snacksc")

-- Extras
require("configs.visual.extras.pattern_highlight")
require("configs.visual.extras.complementary_highlights")
require("configs.visual.extras.code_folding")
require("configs.visual.extras.diagnostics")
require("configs.visual.extras.search_and_yank")
require("configs.visual.extras.line")

local colorschemes = {
	gruber 		= "gruber-darker",
	soat 		= "soat",
	rosepine 	= "rose-pine",
	catppuccin 	= "catppuccin",
	zenwritten 	= "zenwritten",
	default 	= "default",
	gruvbox 	= "gruvbox",
	neobones 	= "neobones",
	vim 		= "vim",
}
local colo = colorschemes.gruvbox


local function plugins()
	Colorscheme(colo)
	Gitsigns()
	Lualine()
	Oil()
	Snacksc()
end
plugins()

local function extras()
	Pattern_Highlight()
	Complementary_Highlights(colo)
	Code_Folding()
	Diagnostics()
	Search_And_Yank()
	Line()
end
extras()
