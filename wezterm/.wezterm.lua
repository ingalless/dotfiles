-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

local selected_theme = os.getenv("JI_THEME") == nil and os.getenv("JI_THEME") or "dark"

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "nightfox"
config.color_scheme = "dawnfox"
config.font = wezterm.font("Iosevka Nerd Font Mono")
-- config.font = wezterm.font("JetBrainsMono NF")
config.font_size = 18
config.line_height = 1.2
config.enable_tab_bar = false
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
