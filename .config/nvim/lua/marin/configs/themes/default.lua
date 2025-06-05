require("marin.configs.themes.customs")


local function dark()
	vim.cmd.colorscheme("darkblue")
	vim.cmd.colorscheme("default")
	ComplementaryColoring()
	Diagnostics()
end

local function light()
	vim.cmd.colorscheme("morning")
	vim.cmd.colorscheme("default")
	vim.cmd.highlight("Function gui=bold")
	ComplementaryColoring()
	Diagnostics()
end

function Default()
	dark()
	vim.keymap.set("n", "<leader>td", function()
		dark()
	end, opts)

	vim.keymap.set("n", "<leader>tl", function()
		light()
	end, opts)
end
