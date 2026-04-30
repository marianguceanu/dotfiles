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
