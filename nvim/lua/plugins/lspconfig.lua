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
        --"intelephense",
        "phpactor",
        "angular-language-server",
      },
    },
  },
  opts = {
    servers = {
      html = {
        enabled = true,
        files = {
          associations = { "*.html", "*.css", "*.scss", "*.js", "*.jsx", "*.ts", "*.tsx", "*.edge", "*.liquid" },
        },
      },
      stimulus_ls = {
        enabled = true,
        files = {
          associations = { "*.html", "*.css", "*.scss", "*.js", "*.jsx", "*.ts", "*.tsx", "*.edge", "*.liquid" },
        },
      },
      tailwindcss = {
        enabled = true,
        files = {
          associations = { "*.html", "*.css", "*.scss", "*.js", "*.jsx", "*.ts", "*.tsx", "*.edge", "*.liquid" },
        },
      },
      cssls = {
        enabled = true,
      },
      css_variables = {
        enabled = true,
      },
      angluarls = {
        enabled = true,
      },
      phpactor = {
        enabled = true,
        filetypes = { "php", "blade", "php_only" },
        settings = {
          phpactor = {
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
