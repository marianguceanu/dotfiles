local lualine = require('lualine')

-- stylua: ignore
local colors = {
	bg       = '#222222',
	fg       = '#bbc2cf',
	yellow   = '#ECBE7B',
	cyan     = '#008080',
	darkblue = '#081633',
	green    = '#98be65',
	orange   = '#FF8800',
	violet   = '#a9a1e1',
	magenta  = '#c678dd',
	blue     = '#51afef',
	red      = '#ec5f67',
}

local conditions = {
	buffer_not_empty = function()
		return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
	end,
	hide_in_width = function()
		return vim.fn.winwidth(0) > 80
	end,
	check_git_workspace = function()
		local filepath = vim.fn.expand('%:p:h')
		local gitdir = vim.fn.finddir('.git', filepath .. ';')
		return gitdir and #gitdir > 0 and #gitdir < #filepath
	end,
}

local config = {
	options = {
		-- Disable sections and component separators
		component_separators = '',
		section_separators = '',
		theme = {
			-- We are going to use lualine_c an lualine_x as left and
			-- right section. Both are highlighted by c theme .  So we
			-- are just setting default looks o statusline
			normal = { c = { fg = colors.fg, bg = colors.bg } },
			inactive = { c = { fg = colors.fg, bg = colors.bg } },
		},
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

ins_left {
	function()
		-- return '▊'
		return ''
	end,
	color = { fg = colors.blue }, -- Sets highlighting of component
	padding = { left = 2, right = 1 }, -- We don't need space before this
}

ins_left {
	-- mode component
	function()
		local mode_format = {
			n = "NOR",
			i = "INS",
			v = "VIS",
			[''] = "VIS BLOCK",
			V = "VIS LINE",
			c = vim.fn.mode(),
			no = vim.fn.mode(),
			s = vim.fn.mode(),
			S = vim.fn.mode(),
			[''] = vim.fn.mode(),
			ic = vim.fn.mode(),
			R = vim.fn.mode(),
			Rv = vim.fn.mode(),
			cv = vim.fn.mode(),
			ce = vim.fn.mode(),
			r = vim.fn.mode(),
			rm = vim.fn.mode(),
			['r?'] = vim.fn.mode(),
			['!'] = vim.fn.mode(),
			t = vim.fn.mode(),
		}
		return mode_format[vim.fn.mode()]
	end,
	color = function()
		-- auto change color according to neovims mode
		local mode_color = {
			n = colors.cyan,
			i = colors.green,
			v = colors.blue,
			[''] = colors.blue,
			V = colors.blue,
			c = colors.magenta,
			no = colors.red,
			s = colors.orange,
			S = colors.orange,
			[''] = colors.orange,
			ic = colors.yellow,
			R = colors.violet,
			Rv = colors.violet,
			cv = colors.red,
			ce = colors.red,
			r = colors.cyan,
			rm = colors.cyan,
			['r?'] = colors.cyan,
			['!'] = colors.red,
			t = colors.red,
		}
		return { fg = mode_color[vim.fn.mode()] }
	end,
	padding = { left = 2, right = 1 },
}

ins_left {
	-- filesize component
	'filesize',
	cond = conditions.buffer_not_empty,
}


ins_left {
	'filename',
	cond = conditions.buffer_not_empty,
	color = { fg = colors.cyan, gui = 'bold' },
}

ins_left { 'location' }

ins_left { 'progress', color = { fg = colors.fg, gui = 'bold' } }

ins_left {
	'diagnostics',
	sources = { 'nvim_diagnostic' },
	symbols = { error = ' ', warn = ' ', info = ' ', hint = " " },
	diagnostics_color = {
		error = { fg = colors.red },
		warn = { fg = colors.yellow },
		info = { fg = colors.blue },
		hint = { fg = colors.cyan }
	},
}

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left {
	function()
		return '%='
	end,
}

-- ins_left {
-- 	-- Lsp server name .
-- 	function()
-- 		local msg = 'No Active Lsp'
-- 		local buf_ft = vim.api.nvim_get_option_value('filetype', { buf = 0 })
-- 		local clients = vim.lsp.get_clients()
-- 		if next(clients) == nil then
-- 			return msg
-- 		end
-- 		for _, client in ipairs(clients) do
-- 			local filetypes = client.config.filetypes
-- 			if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
-- 				return client.name
-- 			end
-- 		end
-- 		return msg
-- 	end,
-- 	icon = ' ',
-- 	color = { fg = '#ffffff', gui = 'bold' },
-- }

-- Add components to right sections
ins_right {
	'o:encoding', -- option component same as &encoding in viml
	fmt = string.upper, -- I'm not sure why it's upper case either ;)
	cond = conditions.hide_in_width,
	color = { fg = colors.green, gui = 'bold' },
}

ins_right {
	'fileformat',
	fmt = string.upper,
	icons_enabled = false, -- I think icons are cool but Eviline doesn't have them. sigh
	color = { fg = "888888", gui = 'bold' },
}

ins_right {
	'branch',
	icon = ' ',
	color = { fg = "pink", gui = 'bold' },
}

ins_right {
	'diff',
	-- Is it me or the symbol for modified us really weird
	symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
	diff_color = {
		added = { fg = colors.green },
		modified = { fg = colors.orange },
		removed = { fg = colors.red },
	},
	cond = conditions.hide_in_width,
}

ins_right {
	function()
		-- return '▊'
		return ''
	end,
	color = { fg = colors.blue },
	padding = { left = 1 },
}

-- Now don't forget to initialize lualine
lualine.setup(config)
