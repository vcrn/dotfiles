require("lualine").setup({
	options = {
		icons_enables = true,
		theme = "dracula",
	},
	sections = {
		lualine_a = {
			{
				"filename",
				path = 1,
			},
		},
	},
})
