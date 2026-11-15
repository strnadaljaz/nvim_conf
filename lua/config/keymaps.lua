-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle comment on current line
vim.keymap.set("n", "<C-/>", "gcc", {
  remap = true,
  desc = "Toggle comment current line",
})

-- Toggle comment on selected lines
vim.keymap.set("v", "<C-/>", "gc", {
  remap = true,
  desc = "Toggle comment selected lines",
})

vim.keymap.set("n", "<C-d>", function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { desc = "Toggle diagnostics " })
