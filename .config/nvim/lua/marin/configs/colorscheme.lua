---@diagnostic disable: undefined-global

local function telescope_lsp()
	vim.cmd.highlight("TelescopeBorder guifg=#404040 guibg=#404040")
	vim.cmd.highlight("TelescopeMatching guibg=#404040")
	vim.cmd.highlight("TelescopeTitle gui=italic")
	vim.cmd.highlight("FloatBorder guibg=#404040 guifg=#404040")
end

local function coloring()
	-- vim.cmd.highlight("MatchParen guifg=red")
	vim.cmd.highlight("Comment gui=italic guifg=grey")
	vim.api.nvim_set_hl(0, "@property", { fg = "white" })
	-- vim.cmd.highlight("MatchParen guifg=red")
	-- vim.api.highlight("Function guifg=cyan")
	-- vim.api.highlight("Keyword gui=bold guifg=#ffa2a2")
	-- vim.api.highlight("@variable guifg=white" })
	-- vim.api.highlight("@type.builtin guifg=orange")
	-- vim.api.highlight("Type guifg=orange")
end

local function tabline()
	vim.cmd.highlight("TabLineFill guibg=#2c2c2c")
	vim.cmd.highlight("TabLine guibg=#2c2c2c guifg=#ffffff")
	vim.cmd.highlight("TabLineSel guibg=#8f8f8f guifg=#0f0f0f")
end

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
	vim.cmd.colorscheme("gruber-darker")
	transparency()
	telescope_lsp()
	coloring()
	tabline()
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
local function line_numbers()
	vim.cmd.highlight("LineNr gui=bold guifg=#b7bf78")
	vim.cmd.highlight("LineNrAbove gui=none guifg=grey")
	vim.cmd.highlight("LineNrBelow gui=none guifg=grey")
end
