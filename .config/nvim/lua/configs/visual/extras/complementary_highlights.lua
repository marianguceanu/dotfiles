-- Complete the solid border look
function Complementary_Highlights()
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
