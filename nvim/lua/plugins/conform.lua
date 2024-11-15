local util = require("conform.util")
local fs = require("conform.fs")

return {
  "stevearc/conform.nvim",
  dependencies = {
    "mason.nvim",
    opts = {
      ensure_installed = {
        "rustywind",
        "prettierd",
        "pretty-php",
        "blade-formatter",
        "pint",
        "rubocop",
        "yamlfmt",
        "stylua",
        "jq",
        "pint",
      },
    },
  },
  lazy = true,
  cmd = "ConformInfo",
  keys = {
    {
      "<leader>cF",
      function()
        require("conform").format({ formatters = { "injected" }, timeout_ms = 3000 })
      end,
      mode = { "n", "v" },
      desc = "Format Injected Langs",
    },
  },
  opts = function()
    ---@type conform.setupOpts
    local opts = {
      default_format_opts = {
        timeout_ms = 3000,
        async = false, -- not recommended to change
        quiet = false, -- not recommended to change
        lsp_format = "fallback", -- not recommended to change
      },
      formatters_by_ft = {
        eruby = { "erb_format", "rustywind" },
        css = { "prettierd" },
        ruby = { "rubocop" },
        lua = { "stylua" },
        fish = { "fish_indent" },
        sh = { "shfmt" },
        yaml = { "yamlfmt" },
        php = { "pint" },
        blade = { "blade-formatter", "rustywind" },
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        liquid = { "prettierd", "rustywind" },
        html = { "prettierd", "rustywind" },
        json = { "jq" },
      },
      -- The options you set here will be merged with the builtin formatters.
      -- You can also define any custom formatters here.
      ---@type table<string, conform.FormatterConfigOverride|fun(bufnr: integer): nil|conform.FormatterConfigOverride>
      formatters = {
        injected = { options = { ignore_errors = true } },
        -- # Example of using dprint only when a dprint.json file is present
        -- dprint = {
        --   condition = function(ctx)
        --     return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
        --   end,
        -- },
        --
        -- # Example of using shfmt with extra args
        -- shfmt = {
        --   prepend_args = { "-i", "2", "-ci" },
        -- },

        pint = {
          meta = {
            url = "https://github.com/laravel/pint",
            description = "Laravel Pint is an opinionated PHP code style fixer for minimalists. Pint is built on top of PHP-CS-Fixer and makes it simple to ensure that your code style stays clean and consistent.",
          },
          command = util.find_executable({
            vim.fn.stdpath("data") .. "/mason/bin/pint",
            "vendor/bin/pint",
          }, "pint"),
          args = { "$FILENAME" },
          stdin = false,
        },
      },
    }
    return opts
  end,
}
