return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require("noice").setup({
        lsp = {
          progress = { enabled = false },
          hover = { enabled = true },
          signature = { enabled = true },
        },
        presets = {
          command_palette = true, -- ativa o retângulo flutuante
          long_message_to_split = true,
          inc_rename = true,
        },
      })
    end
  }
}

