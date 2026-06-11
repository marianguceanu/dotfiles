require("configs.visual.plugins_setup.gitsigns")
require("configs.visual.plugins_setup.colorscheme")
require("configs.visual.plugins_setup.lualine")
require("configs.visual.plugins_setup.oil")
require("configs.visual.plugins_setup.snacksc")

local colorscheme = "gruber-darker"
-- local colorscheme = "soat"
-- local colorscheme = "rose-pine"
-- local colorscheme = "zenwritten"
-- local colorscheme = "default"

local function plugins()
	Colorscheme(colorscheme)
	Gitsigns()
	Lualine()
	Oil()
	Snacksc()
end
plugins()

require("configs.visual.extras.pattern_highlight")
require("configs.visual.extras.complementary_highlights")
require("configs.visual.extras.code_folding")
require("configs.visual.extras.diagnostics")
require("configs.visual.extras.search_and_yank")
require("configs.visual.extras.line")

local function extras()
	Pattern_Highlight()
	Complementary_Highlights(colorscheme)
	Code_Folding()
	Diagnostics()
	Search_And_Yank()
	Line()
end
extras()
