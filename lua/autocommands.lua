-- Close open buffers with q
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "qf", "help", "man", "lspinfo", "spectre_panel" },
  callback = function()
    vim.cmd [[
      nnoremap <silent> <buffer> q :close<CR>
      set nobuflisted
    ]]
  end,
})

-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = { "*.tsx", "*.ts" },
--   callback = function()
--     vim.lsp.buf.code_action({
--       apply = true,
--       context = {
--         only = { "source.organizeImports.ts" },
--         diagnostics = {},
--       },
--     })
--   end,
-- })
