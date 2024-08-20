-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Tokyo Night Moon"
config.font = wezterm.font("Iosevka Nerd Font Mono")
config.font_size = 16
config.enable_tab_bar = false
config.cell_width = 0.9

-- and finally, return the configuration to wezterm
return config
