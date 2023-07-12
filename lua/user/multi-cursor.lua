local M = {
  "mg979/vim-visual-multi",
  commit = "724bd53adfbaf32e129b001658b45d4c5c29ca1a",
  event = "BufReadPre",
  init = function()
    vim.g.VM_default_mappings = 0
    vim.g.VM_maps = {
      ["Find Under"] = "<C-n>",
      ["Add Cursor Down"] = "<M-n>",
      ["Add Cursor Up"] = "<M-p>",
    }
  end,
}

return M
