return {
	'windwp/nvim-ts-autotag',
	lazy = false,
	priority = 1000,
	config = function()
		require('nvim-ts-autotag').setup()
	end
}
