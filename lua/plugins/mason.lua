return {
  -- Mason: Gerenciador de binários
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- Mason LSPConfig: Ponte entre Mason e Neovim
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { 
          "pyright", 
          "html", 
          "cssls", 
          "vtsls", 
          "lua_ls", 
          "clangd" 
        },
      })
    end,
  },

  -- LSP Config: Usando o novo padrão vim.lsp.config
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Servidores simples
      local servers = { "pyright", "html", "cssls", "vtsls", "clangd" }
      
      for _, server in ipairs(servers) do
        vim.lsp.config(server, {
          capabilities = capabilities,
        })
        -- Ativa o servidor
        vim.lsp.enable(server)
      end

      -- Configuração específica para Lua
      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      })
      vim.lsp.enable("lua_ls")
    end,
  },
}
