return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lsp = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Python (Pyright)
      lsp.pyright.setup({ capabilities = capabilities })

      -- HTML
      lsp.html.setup({ capabilities = capabilities })

      -- CSS
      lsp.cssls.setup({ capabilities = capabilities })

      -- JavaScript / TypeScript (vtsls ou tsserver)
      lsp.vtsls.setup({ capabilities = capabilities })

      -- Lua
      lsp.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })

      -- C / C++
      lsp.clangd.setup({
        capabilities = capabilities,
      })
    end
  }
}
