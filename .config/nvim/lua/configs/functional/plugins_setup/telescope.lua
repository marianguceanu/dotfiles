-- Wide variety of use cases, read its docs for more
function Telescope()
	require("telescope").setup({
		defaults = {
			layout_config = {
				prompt_position = "top",
				width = 0.85,
				height = 0.9,
			},
			sorting_strategy = "ascending",

			mappings = {
				i = {
					["<C-u>"] = false,
					["<C-d>"] = false,
				},
			},
		},
	})

	pcall(require("telescope").load_extension, "fzf")
end
