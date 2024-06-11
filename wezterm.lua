-- Pull in the wezterm API
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.default_prog = { "pwsh.exe" }

config.color_scheme = 'AdventureTime'

pcall(function()
	local localSettings = require 'localSettings'
	localSettings.modify_config(config)
end);

return config
