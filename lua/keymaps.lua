-- Normal --
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to the left window', remap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to the bottom window', remap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to the top window', remap = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to the right window', remap = true })

-- Make U opposite to u.
vim.keymap.set('n', 'U', '<C-r>', { desc = 'Redo' })

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" })

-- Clear highlights
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Close buffers
vim.keymap.set("n", "<S-q>", "<cmd>Bdelete!<CR>", { desc = "Close current buffer" })

-- Better paste
vim.keymap.set("v", "p", "P", { desc = "Paste before" })

-- LSP integration
vim.keymap.set("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to definition" })
vim.keymap.set("n", "<leader>lf", "<Cmd>lua vim.lsp.buf.format()<CR>", { desc = "Format" })
vim.keymap.set("n", "<leader>lr", "<Cmd>lua vim.lsp.buf.rename()<CR>", { desc = "Rename" })
vim.keymap.set("n", "<leader>lo", function()
  if vim.bo.filetype ~= 'typescript' and vim.bo.filetype ~= 'typescriptreact' then
    vim.lsp.buf.code_action({
      apply = true,
      context = {
        only = { "source.organizeImports.ts" },
        diagnostics = {},
      },
    })
  end
end, { desc = "Organize imports" })

-- Toggle code action
vim.keymap.set(
  { 'n', 'x' },
  '<leader>ca',
  '<cmd>lua require("fastaction").code_action()<CR>',
  { desc = "Display code actions", buffer = bufnr }
)

vim.keymap.set(
  { 'n', 'x' },
  '<leader>cf',
  '<cmd>lua require("fastaction").code_action({ select_first = true })<CR>',
  { desc = "Select and apply first code action", buffer = bufnr }
)

-- Better page navigation
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
