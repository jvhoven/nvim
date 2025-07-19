return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{
			"<leader>ff",
			"<cmd>FzfLua files<cr>",
			desc = "Find files",
		},
		{
			"<Leader>fg",
			"<cmd>FzfLua live_grep_native<cr>",
			desc = "Grep",
		},
		{
			"gD",
			"<cmd>FzfLua lsp_definitions<cr>",
			desc = "LSP definitions",
		},
		{
			"gr",
			"<cmd>FzfLua lsp_references<cr>",
			desc = "LSP references",
		},
		{
			"gi",
			"<cmd>FzfLua lsp_implementations<cr>",
			desc = "LSP implementations",
		},
		{
			"<leader>ft",
			"<cmd>FzfLua lsp_typedefs<cr>",
			desc = "LSP types",
		},
		{
			"<leader>fc",
			"<cmd>FzfLua colorschemes<cr>",
			desc = "Colorschemes",
		},
		{
			"<leader>z",
			"<cmd>FzfLua zoxide<cr>",
			desc = "Zoxide",
		}
	},
	opts = {
    oldfiles = {
      include_current_session = true,
    },
    keymap = {
      fzf = {
        ["ctrl-q"] = "select-all+accept",
      },
    },
	}
}
