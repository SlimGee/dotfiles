return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle", -- optional for lazy loading on command
  event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
  enabled = true, -- false will disable the plugin
  opts = {
    -- your config goes here
    -- or just leave it empty :)
    enabled = true,
    debouce_delay = 300,
  },
}
