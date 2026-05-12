require("configs.functional.plugins_setup.auto")
require("configs.functional.plugins_setup.blink")
require("configs.functional.plugins_setup.telescope")
require("configs.functional.plugins_setup.lsp")
require("configs.functional.plugins_setup.treesitter")

local function plugins()
	Auto()
	Blink()
	Telescope()
	LSP()
	Treesitter()
end
plugins()

require("configs.functional.extras.extra_buffer_navigation")
require("configs.functional.extras.file_interaction")
require("configs.functional.extras.lsp_actions")
require("configs.functional.extras.telescope_customized")

local function extras()
	Extra_Buffer_Navigation()
	File_Interaction()
	LSP_Actions()
	Telescope_Customized()
end
extras()
