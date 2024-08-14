return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "mason.nvim",
    opts = {
      ensure_installed = {
        "stimulus-language-server",
        "tailwindcss-language-server",
      },
    },
  },
  opts = {
    servers = {
      stimulus_ls = {
        enabled = true,
      },
      tailwindcss = {
        enabled = true,
      },
    },
  },
}
