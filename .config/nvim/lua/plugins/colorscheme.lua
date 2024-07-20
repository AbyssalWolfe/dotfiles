return {
	-- Add Dracula colorscheme and change colors to Dracula Pro
	{
		"Mofiqul/dracula.nvim",
		init = function()
			local dracula = require("dracula")
			dracula.setup({
				-- Dracula PRO colors
				colors = {
					bg = "#22212c",
					fg = "#f8f8f2",
					selection = "#454158",
					comment = "#7970a9",
					red = "#ff9580",
					orange = "#ffca80",
					yellow = "#ffff80",
					green = "#8aff80",
					purple = "#9580ff",
					cyan = "#80ffea",
					pink = "#ff80bf",
					bright_red = "#ffaa99",
					bright_green = "#a2ff99",
					bright_yellow = "#ffff99",
					bright_blue = "#aa99ff",
					bright_magenta = "#ff99cc",
					bright_cyan = "#99ffee",
					bright_white = "#ffffff",
					menu = "#17161d",
					visual = "#2e2b3b",
					gutter_fg = "#393649",
					nontext = "#424450",
				},
				overrides = {
					Special = { fg = dracula.colors().green, italic = false },
				},
				transparent_bg = true,
			})
		end,
	},

	-- Configure LazyVim to load Dracula
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "dracula",
		},
	},
}
