local function gh_dark()
	vim.cmd.colorscheme("github_dark_high_contrast")
end

local function gh_light()
	vim.cmd.colorscheme("github_dark_high_contrast")
end

function GitHub()
	gh_dark()
	vim.keymap.set("n", "<leader>td", function()
		gh_dark()
	end, opts)

	vim.keymap.set("n", "<leader>tl", function()
		gh_light()
	end, opts)
end
