-- Complete the solid border look
function Complementary_Highlights(colo)
	if colo == "gruber-darker" then
		vim.cmd([[
		highlight FloatBorder			guibg=#282828 guifg=#282828
		highlight NormalFloat			guibg=#282828
		" highlight Comment 			guifg=#888888

		highlight SnacksInputBorder 		guibg=#282828 guifg=#282828
		highlight SnacksInputTitle		guibg=#282828 guifg=#73c936 gui=bold

		highlight TelescopeBorder		guibg=#282828 guifg=#282828
		highlight TelescopePromptTitle  	guibg=#ffdd33 guifg=black
		highlight TelescopePreviewTitle 	guibg=#95a99f guifg=black
		highlight TelescopeResultsTitle 	guibg=#73c936 guifg=black
	]])
	end

	if colo == "default" then
		vim.cmd([[
		highlight FloatBorder			guibg=#24262b 		guifg=#24262b
		highlight NormalFloat			guibg=#24262b

		highlight SnacksInputBorder 		guibg=#34363b 		guifg=#34363b
		highlight SnacksInputTitle		guibg=NvimLightGreen 	guifg=black

		highlight TelescopeBorder		guibg=#34363b 		guifg=#34363b
		highlight TelescopePromptTitle  	guibg=NvimLightGreen 	guifg=black
		highlight TelescopePreviewTitle 	guibg=NvimLightBlue 	guifg=black
		highlight TelescopeResultsTitle 	guibg=NvimLightMagenta 	guifg=black
	]])
	end
end
