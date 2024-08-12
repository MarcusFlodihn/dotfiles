local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Latte"

config.window_background_opacity = 1.0

config.use_fancy_tab_bar = false
config.enable_tab_bar = true

config.font = wezterm.font("VictorMono Nerd Font")

config.colors = {
	tab_bar = {
		background = "#eff1f5",
		active_tab = {
			bg_color = "#eff1f5",
			fg_color = "#4c4f69",
		},
		inactive_tab = {
			bg_color = "#ccd0da",
			fg_color = "#6c6f85",
		},
	},
}

local act = wezterm.action

config.keys = {
	{
		key = "LeftArrow",
		mods = "OPT",
		action = act.SendKey({
			key = "b",
			mods = "ALT",
		}),
	},
	{
		key = "RightArrow",
		mods = "OPT",
		action = act.SendKey({
			key = "f",
			mods = "ALT",
		}),
	},
}

return config
