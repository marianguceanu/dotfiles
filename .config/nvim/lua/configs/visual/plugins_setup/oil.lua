-- File manager that works just like the neovim buffer
function Oil()
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1

	require("oil").setup({
		default_file_explorer = true,
		columns = {
			"icon",
			-- "permissions",
			-- "size",
			-- "mtime",
		},
		win_options = {
			wrap = false,
			signcolumn = "yes",
			cursorcolumn = false,
			foldcolumn = "0",
			spell = false,
			list = false,
			conceallevel = 3,
			concealcursor = "nvic",
		},
		delete_to_trash = true,
		cleanup_delay_ms = 2000,
		lsp_file_methods = {
			enabled = true,
			timeout_ms = 1000,
			autosave_changes = false,
		},
		constrain_cursor = "editable",
		experimental_watch_for_changes = true,
		use_default_keymaps = true,
		view_options = {
			show_hidden = true,
			is_hidden_file = function(name, _)
				return vim.startswith(name, ".")
			end,
			is_always_hidden = function()
				return false
			end,
			natural_order = true,
			sort = {
				{ "type", "asc" },
				{ "name", "asc" },
			},
		},
		float = { border = "solid" },
		preview = { border = "solid" },
		progress = { border = "solid" },
		ssh = { border = "solid" },
		keymaps_help = { border = "solid" },
	})
end
