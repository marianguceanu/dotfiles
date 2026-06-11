-- Complete the solid border look
function Complementary_Highlights(colo)
	local colors = { bg_float = "#24262B", bg_float_brighter = "#34363B", prompt = "NvimLightGreen", preview = "NvimLightBlue", title = "NvimLightMagenta" }

	if colo == "gruber-darker" or colo == "soat" then
		colors = { bg_float = "#282828", bg_float_brighter="#383838", title="#73C936", prompt = "#FFDD33", preview = "#95A99F"}
	elseif colo == "rose-pine" then
		colors = { bg_float = "#292734", bg_float_brighter="#292734", title="#31748F", prompt = "#F6C177", preview = "#C4A7E7"}
	elseif colo == "zenbones" then
		colors = { bg_float = "#2C2927", bg_float_brighter="#2C2927", title="#B279A7", prompt = "#D68C67", preview = "#65B8C1"}
		vim.cmd([[hi String gui=none]])
	elseif colo == "zenwritten" then
		colors = { bg_float = "#191919", bg_float_brighter="#393939", title="#DE6E7C", prompt = "#819B69", preview = "#B77E64"}
		vim.cmd([[hi String gui=none]])
	end

	vim.api.nvim_set_hl(0, "FloatBorder", 		{ bg = colors.bg_float_brighter, 		fg = colors.bg_float_brighter })
	vim.api.nvim_set_hl(0, "NormalFloat", 		{ bg = colors.bg_float_brighter })

	vim.api.nvim_set_hl(0, "SnacksInputBorder", 	{ bg = colors.bg_float_brighter, 	fg = colors.bg_float_brighter })
	vim.api.nvim_set_hl(0, "SnacksInputTitle", 	{ bg = colors.title, 			fg = "black"})

	vim.api.nvim_set_hl(0, "TelescopeBorder", 	{ bg=colors.bg_float_brighter, 		fg= colors.bg_float_brighter })
	vim.api.nvim_set_hl(0, "TelescopePromptTitle", 	{ bg = colors.prompt, 			fg = "black" })
	vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = colors.preview, 			fg = "black" })
	vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = colors.title, 			fg = "black" })

end
