require("relative-motions"):setup({ show_numbers = "relative", show_motion = true, enter_mode = "first" })
require("no-header"):setup()
local catppuccin_theme = require("yatline-catppuccin"):setup("mocha")
require("yatline"):setup({
	show_background = true,
	theme = catppuccin_theme,

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
				{ type = "string", custom = false, name = "hovered_path" },
			},
		},
	},
})
