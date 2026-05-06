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
colorscheme()

-- Complete the solid border look
local function complementary_highlights()
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
complementary_highlights()

local function code_folding()
	vim.opt.foldmethod = "expr"
	vim.opt.foldexpr = vim.treesitter.foldexpr()
	vim.opt.foldcolumn = "0"
	vim.opt.foldtext = ""
	vim.opt.foldlevel = 99
	vim.opt.foldlevelstart = 5
	vim.opt.foldnestmax = 4
end
code_folding()

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
diagnostics()

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
search_casing_highlight_yank()

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
line()
