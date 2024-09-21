-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additioonal autocmds here

-- autocomand to set .edge files as html

vim.cmd([[
  autocmd BufNewFile,BufRead *.edge set filetype=html
]])
