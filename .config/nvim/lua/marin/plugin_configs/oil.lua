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
	skip_confirm_for_simple_edits = false,
	prompt_save_on_select_new_entry = true,
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
	float = {
		padding = 2,
		max_width = 0,
		max_height = 0,
		border = "solid",
		win_options = {
			winblend = 0,
		},
	},
	preview = {
		max_width = 0.9,
		min_width = { 40, 0.4 },
		width = nil,
		max_height = 0.9,
		min_height = { 5, 0.1 },
		height = nil,
		border = "solid",
		win_options = {
			winblend = 0,
		},
		update_on_cursor_moved = true,
	},
	-- Configuration for the floating progress window
	progress = {
		max_width = 0.9,
		min_width = { 40, 0.4 },
		width = nil,
		max_height = { 10, 0.9 },
		min_height = { 5, 0.1 },
		height = nil,
		border = "solid",
		minimized_border = "none",
		win_options = {
			winblend = 0,
		},
	},
	-- Configuration for the floating SSH window
	ssh = {
		border = "solid",
	},
	-- Configuration for the floating keymaps help window
	keymaps_help = {
		border = "solid",
	},
})
