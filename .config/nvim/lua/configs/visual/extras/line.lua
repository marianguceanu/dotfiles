-- Line numbers and current line highlight
function Line()
	vim.cmd([[set guicursor=i:block]])
	vim.cmd([[set colorcolumn=120]])
	vim.cmd([[set cursorline]])
	vim.cmd([[set nu]])
	vim.cmd([[set relativenumber]])
	vim.cmd([[set scrolloff=50]])
end
