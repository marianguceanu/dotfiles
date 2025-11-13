require("marin.configs.constants")

---@diagnostic disable: undefined-global, unused-function, unused-local
local function floating_colors()
	vim.cmd.highlight("TelescopeMatching guibg=" .. Colors.bg_lighter .. " guifg=orange")
	vim.cmd.highlight("TelescopeBorder guibg=" .. Colors.bg_lighter .. " guifg=" .. Colors.bg_lighter .. " gui=italic")
	vim.cmd.highlight("Float guibg=" .. Colors.bg_lighter .. " guifg=" .. Colors.bg_lighter .. " gui=italic")
	vim.cmd.highlight("FloatBorder guibg=" .. Colors.bg_lighter .. " guifg=" .. Colors.bg_lighter)
end

local function syntax_highlight()
	vim.cmd.highlight("Comment gui=italic guifg=grey")
end

local function tabline()
	vim.cmd.highlight("TabLineFill guibg=" .. Colors.bg .. " guifg=" .. Colors.bg)
	vim.cmd.highlight("TabLine guibg=" .. Colors.bg .. " guifg=#ffffff gui=none")
	vim.cmd.highlight("TabLineSel guibg=" .. Colors.active .. " gui=none")
end

local function transparency()
	vim.cmd.highlight("Normal guibg=none")
	vim.cmd.highlight("Normal ctermbg=none")
	vim.cmd.highlight("LineNr guibg=none")
	vim.cmd.highlight("SignColumn guibg=none")
end

local function dark()
	vim.cmd.colorscheme("darkblue")
	vim.cmd.colorscheme("gruber-darker")
	syntax_highlight()
	floating_colors()
	tabline()
	transparency()
end

local function light()
	vim.cmd.colorscheme("peachpuff")
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
