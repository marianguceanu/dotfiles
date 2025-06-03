-- Nice number showing
vim.cmd("set nu")
vim.cmd("set relativenumber")
vim.cmd("set scrolloff=50")

-- No highlight on search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Save undo history
vim.o.undofile = true


-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Code folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldtext = ""
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 5
vim.opt.foldnestmax = 4
vim.o.termguicolors = true

-- Block cursor all the time
vim.cmd([[set guicursor=i:block]])

-- Highlight on yank
vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=200})]])

-- Disable line wrap
vim.opt.wrap = false

vim.keymap.set('n', '<C-w>.', '5<C-w>>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-w>,', '5<C-w><', { noremap = true, silent = true })
