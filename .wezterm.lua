-- Necessary imports for configuration
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Setting the default program to launch if on windows
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
	config.default_prog = { "pwsh.exe", "-NoLogo" }
end


local background_color = "#181818"
-- Background and tab bar modifications so that they stay one color
config.colors = {
	background = '#181818',
	tab_bar = {
		background = background_color,
		active_tab = {
			bg_color = background_color,
			fg_color = "white",
			italic = true,
		},
		inactive_tab = {
			bg_color = background_color,
			fg_color = "grey",
		},
		new_tab = {
			bg_color = background_color,
			fg_color = "white",
		},
	},
}

-- Font and enabling the ligatures
config.font =
    wezterm.font('ZedMono Nerd Font', { weight = 'Regular' })
config.font_size = 18
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
config.warn_about_missing_glyphs = false


config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

config.window_padding = {
	left = 10,
	right = 10,
	top = 15,
	bottom = 0,
}
config.window_decorations = "NONE"
config.enable_scroll_bar = false
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

-- Simple keys for switching between panes
config.keys = {

	-- Alternate way to kill tabs if you don't like CTRL-w
	{
		key = "x",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentPane { confirm = true },
	},

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
	{
		key = 'F11',
		mods = '',
		action = wezterm.action.ToggleFullScreen,
	},
}

-- config.enable_wayland = true

-- and finally, return the configuration to wezterm
return config
