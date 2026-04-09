vim.diagnostic.config({
	virtual_text = {
		spacing = 4,
		prefix = "→", -- "●", "■", "▎", "→"
	},
	signs = true,
	underline = true,
	update_in_insert = false, -- don’t spam while typing
	severity_sort = true,
})

local set = vim.api.nvim_set_hl

-- Errors
set(0, "DiagnosticVirtualTextError", { fg = "#ff6c6b" })
set(0, "DiagnosticSignError", { fg = "#ff6c6b" })
set(0, "DiagnosticFloatingError", { fg = "#ff6c6b" })

-- Warnings
set(0, "DiagnosticVirtualTextWarn", { fg = "#ECBE7B" })
set(0, "DiagnosticSignWarn", { fg = "#ECBE7B" })
set(0, "DiagnosticFloatingWarn", { fg = "#ECBE7B" })

-- Info
set(0, "DiagnosticVirtualTextInfo", { fg = "#51afef" })
set(0, "DiagnosticSignInfo", { fg = "#51afef" })
set(0, "DiagnosticFloatingInfo", { fg = "#51afef" })

-- Hints
set(0, "DiagnosticVirtualTextHint", { fg = "#98be65" })
set(0, "DiagnosticSignHint", { fg = "#98be65" })
set(0, "DiagnosticFloatingHint", { fg = "#98be65" })
