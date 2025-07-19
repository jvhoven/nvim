return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>ha",
      function() require("harpoon"):list():add() end,
      desc = "Add to Harpoon"
    },
    {
      "<leader>hh",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "harpoon quick menu",
    },
    {
      "<leader>hp",
      function() require("harpoon"):list():prev() end,
      desc = "Cycle previous Harpoon entry"
    },
    { "<leader>h1", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
    { "<leader>h2", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
    { "<leader>h3", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
    { "<leader>h4", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
    { "<leader>h5", function() require("harpoon"):list():select(5) end, desc = "harpoon to file 5", },
    {
      "<leader>hn",
      function() require("harpoon"):list():next() end,
      desc = "Cycle next Harpoon entry"
    }
  },
  config = function()
    require("harpoon"):setup()
  end
}
