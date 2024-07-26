--------------------------------------------------------------------
--                                                                --
-- ██╗    ██╗███████╗███████╗████████╗███████╗██████╗ ███╗   ███╗ --
-- ██║    ██║██╔════╝╚══███╔╝╚══██╔══╝██╔════╝██╔══██╗████╗ ████║ --
-- ██║ █╗ ██║█████╗    ███╔╝    ██║   █████╗  ██████╔╝██╔████╔██║ --
-- ██║███╗██║██╔══╝   ███╔╝     ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║ --
-- ╚███╔███╔╝███████╗███████╗   ██║   ███████╗██║  ██║██║ ╚═╝ ██║ --
--  ╚══╝╚══╝ ╚══════╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝ --
--                                                                --
--------------------------------------------------------------------

local wezterm = require("wezterm")

return {
	color_scheme = "Dracula PRO",
	disable_default_mouse_bindings = true,
	enable_scroll_bar = false,
	enable_tab_bar = false,
	font = wezterm.font({
		family = "Fira Code",
	}),
	font_size = 10,
	harfbuzz_features = { "cv02", "ss03", "ss04", "ss05", "ss07", "ss09" },
	initial_cols = 100,
	initial_rows = 35,
	text_background_opacity = 0.5,
	underline_position = -3,
	underline_thickness = 2,
	window_background_opacity = 0.7,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
}
