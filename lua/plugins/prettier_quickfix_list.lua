return {
  'yorickpeterse/nvim-pqf',
  keys = {
    {
      "<leader>qf",
      "<cmd>copen<cr>",
      desc = "Go to next quickfix entry"
    },
    {
      "<C-j>",
      "<cmd>cnext<cr>",
      desc = "Go to next quickfix entry"
    },
    {
      "<C-k>",
      "<cmd>cprev<cr>",
      desc = "Go to previous quickfix entry"
    },
  }
}
