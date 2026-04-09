local lualine = require("lualine")

-- stylua: ignore
local colors = {
	yellow   = '#ECBE7B',
	cyan     = '#6676c8',
	darkblue = '#081633',
	green    = '#98be65',
	orange   = '#FF8800',
	violet   = '#a9a1e1',
	magenta  = '#c678dd',
	blue     = '#51afef',
	red      = '#ec5f67',
	darkpink = '#d40096'
}

local conditions = {
	buffer_not_empty = function()
		return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
	end,
	hide_in_width = function()
		return vim.fn.winwidth(0) > 80
	end,
	check_git_workspace = function()
		local filepath = vim.fn.expand("%:p:h")
		local gitdir = vim.fn.finddir(".git", filepath .. ";")
		return gitdir and #gitdir > 0 and #gitdir < #filepath
	end,
}

local config = {
	options = {
		-- Disable sections and component separators
		component_separators = "",
		section_separators = "",
	},
	sections = {
		-- these are to remove the defaults
		lualine_a = {},
		lualine_b = {},
		lualine_y = {},
		lualine_z = {},
		-- These will be filled later
		lualine_c = {},
		lualine_x = {},
	},
	inactive_sections = {
		-- these are to remove the defaults
		lualine_a = {},
		lualine_b = {},
		lualine_y = {},
		lualine_z = {},
		lualine_c = {},
		lualine_x = {},
	},
}

local function ins_left(component)
	table.insert(config.sections.lualine_c, component)
end

local function ins_right(component)
	table.insert(config.sections.lualine_x, component)
end

local mode_color = {
	n = colors.cyan,
	i = colors.green,
	v = colors.blue,
	[""] = colors.blue,
	V = colors.blue,
	c = colors.magenta,
	no = colors.red,
	s = colors.orange,
	S = colors.orange,
	[""] = colors.orange,
	ic = colors.yellow,
	R = colors.violet,
	Rv = colors.violet,
	cv = colors.red,
	ce = colors.red,
	r = colors.cyan,
	rm = colors.cyan,
	["r?"] = colors.cyan,
	["!"] = colors.red,
	t = colors.red,
}

local mode_format = {
	n = "NOR",
	i = "INS",
	v = "VIS",
	[""] = "VIS BLOCK",
	V = "VIS LINE",
	c = "CMD",
	no = vim.fn.mode(),
	s = vim.fn.mode(),
	S = vim.fn.mode(),
	[""] = vim.fn.mode(),
	ic = vim.fn.mode(),
	R = vim.fn.mode(),
	Rv = vim.fn.mode(),
	cv = vim.fn.mode(),
	ce = vim.fn.mode(),
	r = vim.fn.mode(),
	rm = vim.fn.mode(),
	["r?"] = vim.fn.mode(),
	["!"] = vim.fn.mode(),
	t = vim.fn.mode(),
}

ins_left({
	-- mode component
	function()
		return mode_format[vim.fn.mode()]
	end,
	color = function()
		return { fg = mode_color[vim.fn.mode()], gui = "bold" }
	end,
	padding = { left = 2, right = 1 },
})
ins_left({ "branch", icon = " ", color = { gui = "bold", fg = colors.darkpink } })

ins_left({ "filename", color = { gui = "bold" } })

ins_left({ "location" })

ins_left({ "progress" })

ins_left({
	"diagnostics",
	sources = { "nvim_diagnostic" },
	symbols = { error = " ", warn = " ", info = " ", hint = " " },
	diagnostics_color = {
		error = { fg = colors.red },
		warn = { fg = colors.yellow },
		info = { fg = colors.blue },
		hint = { fg = colors.cyan },
	},
})

-- Insert mid section.
ins_left({
	function()
		return "%="
	end,
})

ins_right({
	"o:encoding",
	fmt = string.upper,
	cond = conditions.hide_in_width,
	color = { gui = "bold" },
})

ins_right({
	"fileformat",
	fmt = string.upper,
	icons_enabled = true,
	color = { gui = "bold" },
})
ins_right({ "filesize" })

ins_right({
	"diff",
	symbols = { added = " ", modified = "󰝤 ", removed = " " },
	diff_color = {
		added = { fg = colors.green, gui = "bold" },
		modified = { fg = colors.orange, gui = "bold" },
		removed = { fg = colors.red, gui = "bold" },
	},
	cond = conditions.hide_in_width,
})

-- lualine.setup(config)
lualine.setup()
