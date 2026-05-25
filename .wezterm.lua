local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Setting the default program to launch if on windows
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	config.default_prog = { "pwsh.exe", "-NoLogo" }
	config.window_decorations = "RESIZE"
else
	config.enable_wayland = true
	config.window_decorations = "NONE"
end

local function colorscheme(colo)
	local colors 	= { bg = "#181818", active_bg = "#484848" }
	if colo == "gruber-darker" then
		config.color_scheme = "Gruber (base16)"
		return
	end

	if colo == "rose-pine" then
		colors = { bg = "#191724", active_bg = "#494754"}
		config.color_scheme = "rose-pine"
	end

	if colo == "zenbones_dark" then
		config.color_scheme = "zenbones_dark"
		return
	end

	if colo == "nvim-default" then
		colors = { bg = "#14161b", active_bg = "#44464b"}
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

colorscheme("zenbones_dark")

-- Font and enabling the ligatures
config.font = wezterm.font("IosevkaTerm Nerd Font Propo", { weight = "Regular" })
config.font_size = 18
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.warn_about_missing_glyphs = false

config.window_padding = {
	left = 10,
	right = 10,
	top = 20,
	bottom = 0,
}
config.enable_scroll_bar = false
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

-- Simple keys for switching between panes
config.keys = {
	-- Switch to pane 1-9 (like tmux Ctrl-1 to Ctrl-9)
	{ key = "1", mods = "CTRL", action = wezterm.action.ActivateTab(0) },
	{ key = "2", mods = "CTRL", action = wezterm.action.ActivateTab(1) },
	{ key = "3", mods = "CTRL", action = wezterm.action.ActivateTab(2) },
	{ key = "4", mods = "CTRL", action = wezterm.action.ActivateTab(3) },
	{ key = "5", mods = "CTRL", action = wezterm.action.ActivateTab(4) },
	{ key = "6", mods = "CTRL", action = wezterm.action.ActivateTab(5) },
	{ key = "7", mods = "CTRL", action = wezterm.action.ActivateTab(6) },
	{ key = "8", mods = "CTRL", action = wezterm.action.ActivateTab(7) },
	{ key = "9", mods = "CTRL", action = wezterm.action.ActivateTab(8) },
}

for i = 1, 8 do
	-- CTRL+ALT + number to move to that position
	table.insert(config.keys, {
		key = tostring(i),
		mods = "CTRL|ALT",
		action = wezterm.action.MoveTab(i - 1),
	})
end

return config
