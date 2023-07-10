local M = {
  "rebelot/kanagawa.nvim",
  commit = "1749cea392acb7d1548a946fcee1e6f1304cd3cb",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}

M.name = "kanagawa"
function M.config()
  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
end

return M
