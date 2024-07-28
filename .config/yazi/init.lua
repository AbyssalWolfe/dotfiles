local dracula_pro_palette = {
	fg = "#f8f8f2",
	bglighter = "#393649",
	bglight = "#2e2b3b",
	bg = "#22212c",
	bgdark = "#17161d",
	bgdarker = "#0b0b0f",
	comment = "#7970a9",
	selection = "#454158",
	subtle = "#424450",
	cyan = "#80ffea",
	bright_cyan = "#99ffee",
	green = "#8aff80",
	bright_green = "#a2ff99",
	orange = "#ffca80",
	bright_orange = "#ffdf99",
	pink = "#ff80bf",
	bright_pink = "#ff99cc",
	purple = "#9580ff",
	bright_purple = "#aa99ff",
	red = "#ff9580",
	bright_red = "#ffaa99",
	yellow = "#ffff80",
	bright_yellow = "#ffff99",
}

require("full-border"):setup()
require("starship"):setup()
require("relative-motions"):setup({ show_numbers = "relative" })
require("yatline"):setup({
	section_separator = { open = "", close = "" },
	part_separator = { open = "", close = "" },
	inverse_separator = { open = "", close = "" },

	style_a = {
		fg = dracula_pro_palette.bg,
		bg_mode = {
			normal = dracula_pro_palette.purple,
			select = dracula_pro_palette.yellow,
			un_set = dracula_pro_palette.red,
		},
	},
	style_b = { bg = dracula_pro_palette.subtle, fg = dracula_pro_palette.fg },
	style_c = { bg = dracula_pro_palette.bg, fg = dracula_pro_palette.fg },

	permissions_t_fg = dracula_pro_palette.green,
	permissions_r_fg = dracula_pro_palette.yellow,
	permissions_w_fg = dracula_pro_palette.red,
	permissions_x_fg = dracula_pro_palette.cyan,
	permissions_s_fg = dracula_pro_palette.comment,

	tab_width = 20,
	tab_use_inverse = false,

	selected = { icon = "󰻭", fg = dracula_pro_palette.yellow },
	copied = { icon = "", fg = dracula_pro_palette.green },
	cut = { icon = "", fg = dracula_pro_palette.red },

	total = { icon = "󰮍", fg = dracula_pro_palette.yellow },
	succ = { icon = "", fg = dracula_pro_palette.green },
	fail = { icon = "", fg = dracula_pro_palette.red },
	found = { icon = "󰮕", fg = dracula_pro_palette.cyan },
	processed = { icon = "󰐍", fg = dracula_pro_palette.green },

	show_background = false,

	display_header_line = true,
	display_status_line = true,

	header_line = {
		left = {
			section_a = {},
			section_b = {},
			section_c = {},
		},
		right = {
			section_a = {},
			section_b = {},
			section_c = {},
		},
	},

	status_line = {
		left = {
			section_a = {
				{ type = "string", custom = false, name = "tab_mode" },
			},
			section_b = {
				{ type = "string", custom = false, name = "hovered_size" },
			},
			section_c = {
				{ type = "string", custom = false, name = "hovered_name" },
				{ type = "coloreds", custom = false, name = "count" },
			},
		},
		right = {
			section_a = {
				{ type = "string", custom = false, name = "cursor_position" },
			},
			section_b = {
				{ type = "string", custom = false, name = "cursor_percentage" },
			},
			section_c = {
				{ type = "string", custom = false, name = "hovered_file_extension", params = { true } },
				{ type = "coloreds", custom = false, name = "permissions" },
			},
		},
	},
})
