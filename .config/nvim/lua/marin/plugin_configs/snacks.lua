require("snacks").setup(
	---@diagnostic disable-next-line: undefined-doc-name
	---@type snacks.Config
	{
		explorer = { enabled = true },
		words = { enabled = false },
		statuscolumn = { enabled = true },
		scroll = { enabled = false},
		picker = { enabled = true },
		bigfile = { enabled = true },
		dashboard = { enabled = true },
		indent = { enabled = true },
		input = { enabled = true },
		notifier = { enabled = true },
		quickfile = { enabled = false },
		scope = { enabled = true},
	}
)
