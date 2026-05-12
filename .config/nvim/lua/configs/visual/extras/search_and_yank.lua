-- Behavior for search highlight and yanking
function Search_And_Yank()
	vim.opt.hlsearch = false
	vim.opt.incsearch = true
	vim.o.undofile = true
	vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=200})]])

	-- Case-insensitive searching UNLESS \C or capital in search
	vim.o.ignorecase = true
	vim.o.smartcase = true
end
