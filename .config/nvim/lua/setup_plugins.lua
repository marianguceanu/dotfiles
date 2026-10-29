-- Tag closing, most useful in HTML
require("nvim-ts-autotag").setup({ opts = { enable_close = true, enable_rename = true } })

-- Comment shortcut on 'gc' bind
require("mini.comment").setup()

-- Completions
require('mini.completion').setup({ delay = { completion = 0, info = 0, signature = 0 } })

require("telescope").setup({
	defaults = {
		layout_config = { prompt_position = "top", width = 0.85, height = 0.9 },
		sorting_strategy = "ascending",
		mappings = { i = { ["<C-u>"] = false, ["<C-d>"] = false } },
	},
})

pcall(require("telescope").load_extension, "fzf")

-- require("gruvbox").setup({ transparent_mode = true })
-- require("onedark").setup({ style = 'deep', transparent = true })
-- require("rose-pine").setup({
-- 	styles = {
-- 		bold = false,
--         	italic = false,
--         	transparency = true,
-- 	}
-- })

-- File manager that works just like the neovim buffer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("oil").setup({
	view_options = {
		show_hidden = true,
		is_hidden_file = function(name, _)
			return vim.startswith(name, ".")
		end,
		is_always_hidden = function()
			return false
		end,
		natural_order = true,
		sort = {
			{ "type", "asc" },
			{ "name", "asc" },
		},
	},
	columns = {
		"icon",
		-- "permissions", "size",
	},
})


require("gitsigns").setup({
	signs = {
		add 		= { text = "+" },
		change 		= { text = "~" },
		delete 		= { text = "_" },
		topdelete 	= { text = "‾" },
		changedelete 	= { text = "~" },
		untracked 	= { text = "┆" },
	}
})

local hipatterns = require("mini.hipatterns")
hipatterns.setup({
	highlighters = {
		fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
		hack  = { pattern = "%f[%w]()HACK()%f[%W]" , group = "MiniHipatternsHack"  },
		todo  = { pattern = "%f[%w]()TODO()%f[%W]" , group = "MiniHipatternsTodo"  },
		note  = { pattern = "%f[%w]()NOTE()%f[%W]" , group = "MiniHipatternsNote"  },
		hex_color = hipatterns.gen_highlighter.hex_color(),
	},
})
