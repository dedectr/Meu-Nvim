require("cord").setup({

  editor = {
    client = "neovim",
    tooltip = "Neovim IDE"
  },

  display = {
    theme = "dark",
    swap_fields = false,
  },

  timestamp = {
    enabled = true,
    reset_on_idle = true,
  },

  idle = {
    timeout = 200,
    details = "Ausente",
    state = "Aguardando comandos",
  },

  assets = {
    large = {
      icon = "neovim",
      text = "Neovim",
    },
    small = {
      icon = "keyboard",
      text = "Programando",
    },
  },

  buttons = {
    {
      label = "Meu GitHub",
      url = "https://github.com/",
    },
  },

  text = {
    viewing = "Visualizando {name}",
    editing = "Editando {name}",
    file_browser = "Navegando em {name}",
    plugin_manager = "Gerenciando plugins no Lazy",
    workspace = "Em {workspace}",
    idle = "Ausente",
  },
})

