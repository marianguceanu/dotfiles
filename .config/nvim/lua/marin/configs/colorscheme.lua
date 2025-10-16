local bg_color = "#282828"
-- local bg_color = "#24262b"

---@diagnostic disable: undefined-global, unused-function, unused-local
local function floating_colors()
	vim.cmd.highlight("TelescopeMatching guibg=" .. bg_color)
	vim.cmd.highlight("TelescopeBorder guibg=" .. bg_color .. " guifg=" .. bg_color .. " gui=italic")
	vim.cmd.highlight("Float guibg=" .. bg_color .. " guifg=" .. bg_color .. " gui=italic")
	vim.cmd.highlight("FloatBorder guibg=" .. bg_color .. " guifg=" .. bg_color)
end

local function syntax_highlight()
	vim.cmd.highlight("Comment gui=italic guifg=grey")
end

local function tabline()
	vim.cmd.highlight("TabLineFill guibg=#2c2c2c gui=none")
	vim.cmd.highlight("TabLine guibg=#2c2c2c guifg=#ffffff gui=none")
	vim.cmd.highlight("TabLineSel guibg=#8f8f8f guifg=#0f0f0f gui=none")
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
end

local function light()
	vim.cmd.colorscheme("morning")
	-- vim.cmd.colorscheme("quiet")
	vim.cmd.highlight("Function gui=bold")
	transparency()
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
