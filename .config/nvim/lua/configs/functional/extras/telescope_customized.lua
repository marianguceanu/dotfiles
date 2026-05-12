-- Actions from telescope that have customized keymaps, mainly used for easy extra_buffer_navigation
-- and git interactions, with some neovim api interactions too
function Telescope_Customized()
	local builtin = require("telescope.builtin")

	vim.keymap.set("n", "<leader>pf", builtin.find_files)
	vim.keymap.set("n", "<leader>gf", builtin.git_files)
	vim.keymap.set("n", "<leader>ss", builtin.builtin)
	vim.keymap.set("n", "<leader>gf", builtin.git_files)
	vim.keymap.set("n", "<leader>sf", builtin.find_files)
	vim.keymap.set("n", "<leader>sh", builtin.help_tags)
	vim.keymap.set("n", "<leader>sw", builtin.grep_string)
	vim.keymap.set("n", "<leader>sg", builtin.live_grep)
	vim.keymap.set("n", "<leader>sd", builtin.diagnostics)
	vim.keymap.set("n", "<leader>ts", builtin.treesitter)
	vim.keymap.set("n", "<leader>gs", builtin.git_status)
	vim.keymap.set("n", "<leader>hl", builtin.highlights)
	vim.keymap.set("n", "<leader><leader>", builtin.buffers)
end
