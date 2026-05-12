function Colorscheme()
	require("gruber-darker").setup({
		bold = true,
		invert = {
			signs = false,
			tabline = false,
			visual = false,
		},
		italic = {
			strings = false,
			comments = true,
			operators = false,
			folds = true,
		},
		undercurl = true,
		underline = true,
	})

	vim.cmd([[ colorscheme gruber-darker ]])
	vim.o.winborder = "solid"
	vim.o.termguicolors = true
end

-- local function colorscheme()
-- 	vim.cmd.colorscheme("default")
-- 	vim.o.winborder = "solid"
-- 	vim.o.termguicolors = true
-- end
-- colorscheme()
--
-- -- Complete the solid border look
-- local function complementary_highlights()
-- 	vim.cmd([[
-- 		highlight FloatBorder			guibg=#24262b 		guifg=#24262b
-- 		highlight NormalFloat			guibg=#24262b
--
-- 		highlight SnacksInputBorder 		guibg=#34363b 		guifg=#34363b
-- 		highlight SnacksInputTitle		guibg=NvimLightGreen 	guifg=black
--
-- 		highlight TelescopeBorder		guibg=#34363b 		guifg=#34363b
-- 		highlight TelescopePromptTitle  	guibg=NvimLightGreen 	guifg=black
-- 		highlight TelescopePreviewTitle 	guibg=NvimLightBlue 	guifg=black
-- 		highlight TelescopeResultsTitle 	guibg=NvimLightMagenta 	guifg=black
-- 	]])
-- end
-- complementary_highlights()
