
local M = {
  "nvim-telescope/telescope-file-browser.nvim",
  commit = "e03ff55962417b69c85ef41424079bb0580546ba",
  dependencies = {
    {
      "nvim-telescope/telescope.nvim",
      commit = "203bf5609137600d73e8ed82703d6b0e320a5f36",
      event = "Bufenter",
      cmd = { "Telescope" },
    },
  },
}

function M.config()
  local telescope = require "telescope"
  telescope.load_extension "file_browser"
end

return M
