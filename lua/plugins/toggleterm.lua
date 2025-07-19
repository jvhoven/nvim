return {
	'akinsho/toggleterm.nvim',
	version = "*",
	config = true,
	keys = {
		{
			"<leader>th",
			"<cmd>ToggleTerm size=20 direction=horizontal<cr>",
			desc = "Open terminal horizontally",
		},
		{
			"<leader>tv",
			"<cmd>ToggleTerm size=60 direction=vertical<cr>",
			desc = "Open terminal vertically",
		},
	}
}
