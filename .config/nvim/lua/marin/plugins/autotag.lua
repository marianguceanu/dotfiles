return {
	"windwp/nvim-ts-autotag",
	lazy = false,
	priority = 1000,
	config = function()
		require("nvim-ts-autotag").setup({
			opts = {
				enable_close = true, -- Auto close tags
				enable_rename = true, -- Auto rename pairs of tags
			},
		})
	end,
}
