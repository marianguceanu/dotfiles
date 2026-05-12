-- Needed for some operations
function Treesitter()
	require("nvim-treesitter").setup({
		ensure_installed = { "all" },
		auto_install = true,
	})

	vim.api.nvim_create_autocmd("FileType", {
		callback = function(ev)
			pcall(vim.treesitter.start, ev.buf)
		end,
	})
end
