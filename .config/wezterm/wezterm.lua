-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.use_ime = true

-- For example, changing the color scheme:
-- config.color_scheme = "AdventureTime"
config.colors = require("cyberdream")

config.font_size = 14.0
config.font = wezterm.font_with_fallback({
	"JetBrains Mono",
	"Source Han Sans CN",
	"Noto Sans CJK SC",
})

-- SSH
-- Usage: wezterm connect SSHMUX:hostname
config.ssh_domains = wezterm.default_ssh_domains()

return config
