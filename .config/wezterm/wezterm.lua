local wezterm = require("wezterm")
local mux = wezterm.mux

wezterm.on("gui-attached", function(_)
	local workspace = mux.get_active_workspace()
	for _, window in ipairs(mux.all_windows()) do
		if window:get_workspace() == workspace then
			window:gui_window():maximize()
		end
	end
end)

local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback({
	"EnvyCodeR Nerd Font Mono",
	"Envy Code R",
	"JetBrains Mono",
})
config.font_size = 20.0

config.color_scheme = "Darcula (base16)"
config.colors = {
	background = "#222233",
}
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_background_opacity = 0.9
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
-- Disable hardware acceleration because of issues with docking station
config.front_end = "Software"

return config
