-- Prettify some UI components
function Snacksc()
	require("snacks").setup({
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
	})
end
