require("marin.configs.themes.customs")

local function dark()
	vim.cmd.colorscheme("darkblue")
	vim.g.adwaita_transparent = true
        vim.cmd('colorscheme adwaita')
end

local function light()
	vim.cmd.colorscheme("morning")
	vim.cmd.colorscheme("adwaita")
end

function Adwaita()
	dark()
	vim.keymap.set("n", "<leader>td", function()
		dark()
	end, opts)

	vim.keymap.set("n", "<leader>tl", function()
		light()
	end, opts)
end
