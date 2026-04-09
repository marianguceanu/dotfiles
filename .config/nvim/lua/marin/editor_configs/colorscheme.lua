require("base16-colorscheme").with_config({
	telescope = false,
	indentblankline = true,
	notify = true,
	ts_rainbow = true,
	cmp = false,
	illuminate = true,
	dapui = true,
})
vim.cmd.colorscheme("base16-black-metal-bathory")

-- NOTE: default theme
-- vim.cmd.colorscheme("lunaperche")
-- vim.cmd.highlight({ "Comment", "guifg=#88aa88" })

vim.o.winborder = "single"
