-- Dictates how code folding should work
function Code_Folding()
	vim.opt.foldmethod = "expr"
	vim.opt.foldexpr = vim.treesitter.foldexpr()
	vim.opt.foldcolumn = "0"
	vim.opt.foldtext = ""
	vim.opt.foldlevel = 99
	vim.opt.foldlevelstart = 5
	vim.opt.foldnestmax = 4
end
