local wezterm = require("wezterm")

-- Override default wezterm configurations
local config = wezterm.config_builder()

config.default_prog = { "/bin/zsh", "-1" }

-- config for fonts
config.font = wezterm.font("JetBrains Mono", { weight = "Medium", italic = false })

-- config for window
config.window_close_confirmation = "NeverPrompt"
config.window_background_opacity = 0.8

-- config for tab & tab bar
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- Rebinding effect of a key combination
local act = wezterm.action

config.keys = {
	{
		key = "Backspace",
		mods = "CTRL",
		action = act.SendKey({
			key = "w",
			mods = "CTRL",
		}),
	},
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = act.SplitPane({ direction = "Right" }),
	},
	{
		key = "v",
		mods = "CTRL|SHIFT",
		action = act.SplitPane({ direction = "Down" }),
	},
	{
		key = "J",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key = "K",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Up"),
	},
}

-- Override wezterm on startup
local mux = wezterm.mux

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return config
