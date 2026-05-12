-- Code completions whilst typing
function Blink()
	require("blink.cmp").setup({
		keymap = { preset = "enter" },

		appearance = {
			nerd_font_variant = "normal",
		},

		completion = {
			documentation = { auto_show = true },
			menu = {
				draw = {
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "source_name", gap = 1, "kind_icon", "kind" },
					},
				},
			},
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },
	})
end
