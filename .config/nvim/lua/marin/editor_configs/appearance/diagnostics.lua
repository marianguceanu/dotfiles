function Diagnostics()
	vim.diagnostic.config({
		virtual_text = {
			spacing = 4,
			prefix = "●", -- "●", "■", "▎", "→"
		},
		signs = true,
		underline = true,
		update_in_insert = false, -- don’t spam while typing
		severity_sort = true,
	})
end
