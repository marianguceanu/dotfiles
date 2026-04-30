require("nvim-treesitter").setup({
	ensure_installed = { "all" }, -- or "all"
	auto_install = true, -- installs parser when you open a file with no parser
})

vim.api.nvim_create_autocmd("FileType", {
	callback = function(ev)
		pcall(vim.treesitter.start, ev.buf)
	end,
})
