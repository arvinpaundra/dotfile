local wezterm = require 'wezterm'

-- Override default wezterm configurations
local config = wezterm.config_builder()

config.default_prog = { '/usr/bin/zsh', '-1' }

config.font = wezterm.font('JetBrains Mono', { weight = 'Medium', italic = false })

config.window_close_confirmation = 'NeverPrompt'

-- Rebinding effect of a key combination
local act = wezterm.action

config.keys = {
	{
		key = 'Backspace',
		mods = 'CTRL',
		action = act.SendKey {
			key = 'w',
			mods = 'CTRL',
		},
	},
}

return config
