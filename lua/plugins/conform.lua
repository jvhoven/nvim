return {
  'stevearc/conform.nvim',
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
      graphql = { "prettier" },
    },
  },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters = {
        prettier = {
          require_cwd = true,
        }
      },
    })
  end
}
