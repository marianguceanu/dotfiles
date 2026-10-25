local module = {}


function module.colorscheme(colo, config)
	local colors = { bg = "#181818", active_bg = "#282828", tab_bar_bg="#101010" }

	if colo == "gruber-darker" then
		config.color_scheme = "Gruber (base16)"
	elseif colo == "rose-pine" then
		colors = { bg = "#191724", active_bg = "#494754", tab_bar_bg = "#12101d" }
		config.color_scheme = "rose-pine"
	elseif colo == "soat" then
		colors = { bg = "#202020", active_bg = "#303030", tab_bar_bg = "#404040" }
	elseif colo == "nvim-default" then
		colors = { bg = "#14161b", active_bg = "#34363b", tab_bar_bg = "#0e1015" }
		config.color_scheme = "NvimDark"
	elseif colo == "gruvbox" then
		config.color_scheme = "GruvboxDarkHard"
		return
	elseif colo == "catppuccin" then
		config.color_scheme = "Catppuccin Mocha"
		return
	elseif colo == "black" then
		colors = { bg = "#000000", active_bg = "#000000", tab_bar_bg="#000000" }
	elseif colo == "grey" then
		colors = { bg = "#181818", active_bg = "#181818", tab_bar_bg="#181818" }
	else
		config.color_scheme = colo
		return
	end

	config.colors = {
		background = colors.bg,
		tab_bar = {
			background 	= colors.tab_bar_bg,
			active_tab 	= { bg_color = colors.active_bg, 	fg_color = "white" },
			inactive_tab 	= { bg_color = colors.tab_bar_bg, 	fg_color = "#404040" },
			new_tab 	= { bg_color = colors.bg, 		fg_color = "#404040" },
		},
	}

	-- local appearance = wezterm.gui.get_appearance()
	-- config.color_scheme = appearance:find("Dark") and "Catppuccin Mocha" or "Catppuccin Latte"
end

return module
