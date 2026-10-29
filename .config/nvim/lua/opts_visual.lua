-- Editor appearance, colorscheme, custom highlights, etc..
vim.cmd.colorscheme("lunaperche")
vim.o.winborder = "rounded"
vim.o.termguicolors = true
vim.api.nvim_set_hl(0, "StatusLine", 	{ bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", 	{ bg = "none" })
vim.api.nvim_set_hl(0, "TabLine", 	{ bg = "none" })
vim.api.nvim_set_hl(0, "TabLineFill", 	{ bg = "none" })

-- Code folding 
vim.opt.foldmethod 	= "expr"
vim.opt.foldexpr 	= vim.treesitter.foldexpr()
vim.opt.foldcolumn 	= "0"
vim.opt.foldtext 	= ""
vim.opt.foldlevel 	= 99
vim.opt.foldlevelstart 	= 5
vim.opt.foldnestmax 	= 4

-- Inline diagnostics
vim.diagnostic.config({
	virtual_text 		= { spacing = 4, prefix = "●", }, -- "●", "■", "▎", "→" 
	signs 			= true,
	underline 		= true,
	update_in_insert 	= false,
	severity_sort 		= true,
})

-- Search in file opts
vim.opt.hlsearch 	= false
vim.opt.incsearch 	= true
vim.o.undofile 		= true
vim.o.ignorecase 	= true
vim.o.smartcase 	= true

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
	end,
})

vim.o.guicursor 	= "i:block"
vim.o.colorcolumn 	= "120"
vim.o.cursorline 	= true
vim.o.number 		= true
vim.o.relativenumber 	= true
vim.o.scrolloff 	= 100
vim.o.wrap 		= false
vim.opt.signcolumn 	= "yes"
vim.g.have_nerd_font 	= true

-- Status line
vim.opt.laststatus = 3
vim.opt.statusline = table.concat({ " %f", "%m", "%=", " %y", "  %l:%c " })
