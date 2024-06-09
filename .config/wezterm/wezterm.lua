-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "AdventureTime"

config.font_size = 14.0

-- SSH
config.ssh_domains = {
	{
		-- This name identifies the domain
		name = "naja",
		-- The hostname or address to connect to. Will be used to match settings
		-- from your ssh config file
		remote_address = "192.168.88.4",
		-- The username to use on the remote host
		username = "hjw",
	},
}

-- and finally, return the configuration to wezterm
return config
