function Highlight()
	-- On search
	vim.opt.hlsearch = true
	vim.opt.incsearch = true

	-- On yank
	vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=200})]])
end
