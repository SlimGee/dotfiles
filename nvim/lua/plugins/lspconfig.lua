return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "mason.nvim",
    opts = {
      ensure_installed = {
        "stimulus-language-server",
        "css-lsp",
        "intelephense",
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
      cssls = {
        enabled = true,
      },
      css_variables = {
        enabled = true,
      },
      angluarls = {
        enabled = true,
      },
      inteliphense = {
        enabled = true,
      },
    },
  },
}
