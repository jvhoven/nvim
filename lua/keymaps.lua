-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", "P", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Better page navigation
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "<C-d>", "<C-d>zz")

-- Plugins --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>lua require'user.override.telescope'.project_files()<CR>", opts)
keymap("n", "<leader>ft", "<cmd>lua require'user.override.telescope'.live_grep_project_files()<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope file_browser<CR>", opts)
keymap("n", "<leader>fc", ":Telescope tags<CR>", opts)

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- Lsp
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)

-- Toggleterm
keymap("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", opts)
keymap("n", "<leader>tv", "<cmd>ToggleTerm size=30 direction=vertical<cr>", opts)

-- Gitsigns
keymap('n', ']c', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", {expr=true})
keymap('n', '[c', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", {expr=true})

-- Actions
keymap('n', '<leader>hs', ':Gitsigns stage_hunk<CR>')
keymap('v', '<leader>hs', ':Gitsigns stage_hunk<CR>')
keymap('n', '<leader>hr', ':Gitsigns reset_hunk<CR>')
keymap('v', '<leader>hr', ':Gitsigns reset_hunk<CR>')
keymap('n', '<leader>hS', '<cmd>Gitsigns stage_buffer<CR>')
keymap('n', '<leader>hu', '<cmd>Gitsigns undo_stage_hunk<CR>')
keymap('n', '<leader>hR', '<cmd>Gitsigns reset_buffer<CR>')
keymap('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>')
keymap('n', '<leader>hb', '<cmd>lua require"gitsigns".blame_line{full=true}<CR>')
keymap('n', '<leader>tb', '<cmd>Gitsigns toggle_current_line_blame<CR>')
keymap('n', '<leader>hd', '<cmd>Gitsigns diffthis<CR>')
keymap('n', '<leader>hD', '<cmd>lua require"gitsigns".diffthis("~")<CR>')
keymap('n', '<leader>td', '<cmd>Gitsigns toggle_deleted<CR>')

-- Text object
keymap('o', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
keymap('x', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
