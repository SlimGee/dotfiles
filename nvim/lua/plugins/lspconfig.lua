return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "mason.nvim",
    opts = {
      ensure_installed = {
        "stimulus-language-server",
        "tailwindcss-language-server",
        "css-lsp",
        "css-variables-language-server",
        "intelephense",
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
      cssls = {
        enabled = true,
      },
      css_variables = {
        enabled = true,
      },
      intelephense = {
        enabled = true,
        filetypes = { "php", "blade", "php_only" },
        settings = {
          intelephense = {
            filetypes = { "php", "blade", "php_only" },
            files = {
              associations = { "*.php", "*.blade.php" }, -- Associating .blade.php files as well
              maxSize = 5000000,
            },
          },
        },
      },
    },
  },
}
