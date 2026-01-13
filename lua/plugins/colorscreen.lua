return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- carrega antes de tudo
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- DARK pesado (latte, frappe, macchiato, mocha)
        transparent_background = false,
        term_colors = true,
        integrations = {
          treesitter = true,
          native_lsp = true,
        }
      })

      vim.cmd.colorscheme("catppuccin")
    end
  }
}

