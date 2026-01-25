return {
  {
    "williamboman/mason.nvim",
    version = "^1",
    build = ":MasonUpdate",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    version = "^1",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        -- lista opcional; pode deixar vazio também
        ensure_installed = { "pyright", "lua_ls", "clangd" },
      })
    end,
  },
}
