-- Nice line showing on bottom of the screen
function Lualine()
	local lualine = require("lualine")

	local mode_format = {
		n 	= "NOR",
		i 	= "INS",
		v 	= "VIS",
		[""] 	= "VIS BLOCK",
		V 	= "VIS LINE",
		c 	= "CMD",
		no 	= vim.fn.mode(),
		s 	= vim.fn.mode(),
		S 	= vim.fn.mode(),
		[""] 	= vim.fn.mode(),
		ic 	= vim.fn.mode(),
		R 	= vim.fn.mode(),
		Rv 	= vim.fn.mode(),
		cv 	= vim.fn.mode(),
		ce 	= vim.fn.mode(),
		r 	= vim.fn.mode(),
		rm 	= vim.fn.mode(),
		["r?"] 	= vim.fn.mode(),
		["!"] 	= vim.fn.mode(),
		t 	= vim.fn.mode(),
	}

	local config = {
		options = {
			icons_enabled = true,
			theme = "auto",
			-- theme = {
			-- 	normal = { c = { fg = "white", bg = "#34363b" } },
			-- 	inactive = { c = { fg = "white", bg = "#34363b" } },
			-- },
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			always_divide_middle = true,
			always_show_tabline = true,
			globalstatus = true,
			refresh = {
				statusline = 1000,
				tabline = 1000,
				winbar = 1000,
				refresh_time = 16, -- ~60fps
				events = {
					"WinEnter",
					"BufEnter",
					"BufWritePost",
					"SessionLoadPost",
					"FileChangedShellPost",
					"VimResized",
					"Filetype",
					"CursorMoved",
					"CursorMovedI",
					"ModeChanged",
				},
			},
		},
		sections = {},
		inactive_sections = {
			lualine_a = {		 }, lualine_b = {}, lualine_c = { "filename" },
			lualine_x = { "location" }, lualine_y = {}, lualine_z = {	     },
		},
	}
	local config_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {
			-- mode component
			{
				function() return mode_format[vim.fn.mode()] end,
				color = { gui = "bold" },
				padding = { left = 2, right = 2 },
			},

			-- Branch, alternative icon = " ",
			{ function() return "<"  end , padding = { left = 0, right = 0 }, color = { gui = "bold", fg = "pink" }},
			{
				"branch",
				icon = "",
				color = { gui = "bold", fg = "pink" },
				padding = { left = 0, right = 0 },
			},
			{ function() return ">"  end , padding = { left = 1, right = 0 }, color = { gui = "bold", fg = "pink" } },

			-- More contrasty
			-- diff_color = { added = { fg = "#00FF00" }, removed = { fg = "#FF0000" }, modified = { fg = "#FFFF00" } },
			{
				"diff",
				symbols = { added = " ", modified = "󰜥 ", removed = " " },
				color = { gui = "bold" },
			},

			{ "diagnostics", color = { gui = "bold" } },

			{ "filename", path = 1 },
		},
		lualine_x = {
			"progress",

			{ "location", padding = { left = 2, right = 1 } },
		},
		lualine_y = {},
		lualine_z = {},
	}

	config.sections = config_sections

	lualine.setup(config)
end
