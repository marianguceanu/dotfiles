function Line()
	-- Block cursor all the time
	vim.cmd([[set guicursor=i:block]])

	-- Disable line wrap
	vim.opt.wrap = false
	vim.cmd([[set colorcolumn=120]])
	vim.cmd([[set cursorline]])
end
