-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.use_ime = true

-- Fix scroll wheel behavior in wayland
local act = wezterm.action
config.mouse_bindings = {
	{
		event = { Down = { streak = 1, button = { WheelUp = 1 } } },
		mods = "NONE",
		action = act.ScrollByLine(-3),
	},
	{
		event = { Down = { streak = 1, button = { WheelDown = 1 } } },
		mods = "NONE",
		action = act.ScrollByLine(3),
	},
}

-- For example, changing the color scheme:
config.color_scheme = "GruvboxDark"

config.font_size = 14.0
config.font = wezterm.font_with_fallback({
	"Maple Mono NF CN",
	"JetBrains Mono",
	"Source Han Sans CN",
	"Noto Sans CJK SC",
})

-- SSH
-- Usage: wezterm connect SSHMUX:hostname
config.ssh_domains = wezterm.default_ssh_domains()

return config
