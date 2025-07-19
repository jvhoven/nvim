return {
  "numToStr/Comment.nvim",
  keys = {
    { "<leader>/",
      "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>",
      mode = { "n" },
      desc = "Toggle comment",
    },
    { "<leader>/",
      "<cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      mode = { "x" },
      desc = "Toggle comment in visual mode",
    },
  }
}
