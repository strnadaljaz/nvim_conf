-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Comment current line
vim.keymap.set("n", "<C-/>", "gcc", {
  remap = true,
  desc = "Comment current line",
})

-- Comment selected lines
vim.keymap.set("v", "<C-/>", "gc", {
  remap = true,
  desc = "Comment selected lines",
})
