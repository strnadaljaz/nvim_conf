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
  local config = vim.diagnostic.config()
  vim.diagnostic.config({ virtual_text = not config.virtual_text })
end, { desc = "Toggle inline diagnostic virtual text" })
