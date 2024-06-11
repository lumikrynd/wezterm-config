local wezterm = require 'wezterm'

local module = {}

function module.modify_config (config)
	config.default_prog = { [[C:\Program Files\Git\bin\bash.exe]] }
end

return module
