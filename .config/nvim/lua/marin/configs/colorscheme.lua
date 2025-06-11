---@diagnostic disable-next-line: unused-function, unused-local
local function transparency()
	vim.cmd.highlight("Normal guibg=none")
	vim.cmd.highlight("Normal ctermbg=none")
	vim.cmd.highlight("NonText guibg=none")
	vim.cmd.highlight("NonText ctermbg=none")
	vim.cmd.highlight("LineNr guibg=none")
	vim.cmd.highlight("SignColumn guibg=none")
end


local function dark()
	vim.cmd.colorscheme("darkblue")
	vim.cmd.colorscheme("lunaperche")
	-- vim.cmd.colorscheme("gruber-darker")
	-- vim.cmd.highlight("Comment gui=italic guifg=grey")
	transparency()
end

local function light()
	vim.cmd.colorscheme("morning")
	vim.cmd.colorscheme("default")
	vim.cmd.highlight("Function gui=bold")
end

dark()
vim.keymap.set("n", "<leader>td", function()
	dark()
end, opts)

vim.keymap.set("n", "<leader>tl", function()
	light()
end, opts)


---@diagnostic disable-next-line: unused-function, unused-local
local function diagnostics()
	vim.cmd.highlight("DiagnosticUnderlineError gui=undercurl")
	vim.cmd.highlight("DiagnosticUnderlineInfo gui=undercurl")
	vim.cmd.highlight("DiagnosticUnderlineOk gui=undercurl")
	vim.cmd.highlight("DiagnosticUnderlineWarn gui=undercurl")
	vim.cmd.highlight("DiagnosticUnderlineHint gui=undercurl")
	vim.cmd.highlight("DiagnosticError guibg=red")
end

---@diagnostic disable-next-line: unused-function, unused-local
local function coloring()
	vim.cmd.highlight("MatchParen guifg=red")
	vim.cmd.highlight("Comment gui=italic guifg=grey")
	-- vim.api.nvim_set_hl(0, "Function", { fg = "cyan" })
	-- vim.api.nvim_set_hl(0, "Keyword", { bold = true, fg = "#ffa2a2" })
	-- vim.api.nvim_set_hl(0, "@variable", { fg = "white" })
	-- vim.api.nvim_set_hl(0, "@type.builtin", { fg = "orange" })
	-- vim.api.nvim_set_hl(0, "Type", { fg = "orange" })
end

---@diagnostic disable-next-line: unused-function, unused-local
local function line_numbers()
	vim.cmd.highlight("LineNr gui=bold guifg=#b7bf78")
	vim.cmd.highlight("LineNrAbove gui=none guifg=grey")
	vim.cmd.highlight("LineNrBelow gui=none guifg=grey")
end
