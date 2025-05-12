-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Gruvbox Dark (Gogh)"
config.font = wezterm.font("Iosevka Nerd Font Mono")
config.font_size = 18
config.enable_tab_bar = false
config.cell_width = 0.9
config.window_padding = {
	left = 16,
	right = 16,
	top = 16,
	bottom = 16,
}

-- Fix alt key behaviour
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true

-- and finally, return the configuration to wezterm
return config
