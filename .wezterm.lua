local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Setting the default program to launch if on windows
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	config.default_prog = { "pwsh.exe", "-NoLogo" }
else
	config.enable_wayland = true
end

local function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Material Darker (base16)"
	else
		return "Material Lighter (base16)"
	end
end
config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())

-- Font and enabling the ligatures
config.font = wezterm.font("IosevkaTerm Nerd Font Propo", { weight = "Regular" })
config.font_size = 18
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.warn_about_missing_glyphs = false

config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

config.window_padding = {
	left = 10,
	right = 10,
	top = 20,
	bottom = 0,
}
config.window_decorations = "NONE"
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
