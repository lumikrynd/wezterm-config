-- Pull in the wezterm API
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.default_prog = { "pwsh.exe" }

config.color_scheme = 'AdventureTime'

pcall(function()
	local localSettings = require 'localSettings'
	localSettings.modify_config(config)
end);

config.skip_close_confirmation_for_processes_named = {
  'bash',
  'sh',
  'zsh',
  'fish',
  'tmux',
  'nu',
  'bash.exe',
  'cmd.exe',
  'pwsh.exe',
  'powershell.exe',
}

return config
