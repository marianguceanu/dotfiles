require("nvim-ts-autotag").setup({
	opts = {
		enable_close = true, -- Auto close tags
		enable_rename = true, -- Auto rename pairs of tags
	},
})
require("nvim-autopairs").setup({})
require("mason").setup({})
require("Comment").setup({})
