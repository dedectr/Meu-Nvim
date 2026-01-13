return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim"
    },

    cmd = "Neotree",

    keys = {
      { "<C-e>", "<cmd>Neotree toggle left<CR>", desc = "Explorer" },
    },

    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        }
      },

      window = {
        position = "left",
        width = 32,
      }
    }
  }
}

