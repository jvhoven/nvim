return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },                       -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken",                          -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    keys = {
      {
        "<leader>cot",
        "<cmd>CopilotChatToggle<cr>",
        desc = "Toggle Copilot chat"
      },
      {
        "<leader>com",
        "<cmd>CopilotChatModels<cr>",
        desc = "Select Copilot model"
      },
      {
        "<leader>coa",
        "<cmd>CopilotChatAgents<cr>",
        desc = "Toggle Copilot agents"
      },
    }
  },
}
