local module = {}

function module.colorscheme(colo, config)
	local colors 	= { bg = "#181818", active_bg = "#484848" }

	if colo == "gruber-darker" then
		config.color_scheme = "Gruber (base16)"
	end

	if colo == "rose-pine" then
		colors = { bg = "#191724", active_bg = "#494754"}
		config.color_scheme = "rose-pine"
	end

	if colo == "zenbones_dark" or colo == "zenwritten_dark" then
		config.color_scheme = colo
		return
	end

	if colo == "nvim-default" then
		colors = { bg = "#14161b", active_bg = "#44464b"}
		config.color_scheme = "NvimDark"
	end

	config.colors = {
		background = colors.bg,
		tab_bar = {
			background 	= colors.bg,
			active_tab 	= { bg_color = colors.active_bg, 	fg_color = "white" },
			inactive_tab 	= { bg_color = colors.bg, 		fg_color = "#808080" },
			new_tab 	= { bg_color = colors.bg, 		fg_color = "#808080" },
		},
	}
end

return module
