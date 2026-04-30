local function colorscheme()
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

	vim.cmd.colorscheme("gruber-darker")
	vim.o.winborder = "solid"
	vim.o.termguicolors = true
	-- For seeing colors of hexcodes in editor
	require("colorizer").setup()
end

-- Complete the solid border look
local function complementary_highlights()
	vim.cmd([[
		highlight FloatBorder			guibg=#383838 guifg=#383838
		highlight TelescopeBorder		guibg=#383838 guifg=#383838
		highlight SnacksInputBorder 		guibg=#282828 guifg=#282828
		highlight SnacksInputTitle		guibg=#282828 guifg=#73c936 gui=bold
		highlight NormalFloat			guibg=#383838
		highlight TelescopePromptTitle  	guifg=#ffdd33
		highlight TelescopePreviewTitle 	guifg=#95a99f
		highlight TelescopeResultsTitle 	guifg=#73c936
	]])
end

local function code_folding()
	vim.opt.foldmethod = "expr"
	vim.opt.foldexpr = vim.treesitter.foldexpr()
	vim.opt.foldcolumn = "0"
	vim.opt.foldtext = ""
	vim.opt.foldlevel = 99
	vim.opt.foldlevelstart = 5
	vim.opt.foldnestmax = 4
end

local function diagnostics()
	vim.diagnostic.config({
		virtual_text = {
			spacing = 4,
			prefix = "●", -- "●", "■", "▎", "→"
		},
		signs = true,
		underline = true,
		update_in_insert = false,
		severity_sort = true,
	})
end

local function search_casing_highlight_yank()
	-- On search
	vim.opt.hlsearch = false
	vim.opt.incsearch = true

	-- Case-insensitive searching UNLESS \C or capital in search
	vim.o.ignorecase = true
	vim.o.smartcase = true

	-- Save undo history
	vim.o.undofile = true

	-- On yank
	vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=200})]])
end

local function line()
	-- Block cursor all the time
	vim.cmd([[set guicursor=i:block]])

	-- Disable line wrap
	vim.opt.wrap = false
	vim.cmd([[set colorcolumn=120]])
	vim.cmd([[set cursorline]])

	-- Line numbers
	vim.cmd("set nu")
	vim.cmd("set relativenumber")
	vim.cmd("set scrolloff=50")
end

colorscheme()
code_folding()
diagnostics()
search_casing_highlight_yank()
line()
complementary_highlights()
