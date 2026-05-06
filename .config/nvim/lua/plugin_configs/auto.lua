-- All the plugins that do something automatically

-- Tag closing, most useful in HTML
require("nvim-ts-autotag").setup({
	opts = {
		enable_close = true, -- Auto close tags
		enable_rename = true, -- Auto rename pairs of tags
	},
})

-- Pairs
require("nvim-autopairs").setup({})

-- Commenting shortcuts
require("Comment").setup({})

-- Prettify some UI components
require("snacks").setup(
	---@diagnostic disable-next-line: undefined-doc-name
	---@type snacks.Config
	{
		explorer = { enabled = true },
		words = { enabled = false },
		statuscolumn = { enabled = true },
		scroll = { enabled = false },
		picker = { enabled = false },
		bigfile = { enabled = true },
		dashboard = { enabled = true },
		indent = { enabled = true },
		input = { enabled = true },
		notifier = { enabled = true, style = "fancy" },
		quickfile = { enabled = true },
		scope = { enabled = true },
	}
)

-- Highlight TODO, FIXME, BUG etc...
require("todo-comments").setup({})
