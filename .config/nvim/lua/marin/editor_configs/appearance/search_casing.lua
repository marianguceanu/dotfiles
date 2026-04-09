function SearchCasing()
	-- Case-insensitive searching UNLESS \C or capital in search
	vim.o.ignorecase = true
	vim.o.smartcase = true
	-- Save undo history
	vim.o.undofile = true
end
