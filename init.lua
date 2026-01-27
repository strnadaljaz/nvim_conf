require("config.lazy")
require("config.keymaps")

require("themes.easy-eyes")

vim.opt.guicursor = {
  "n-v-c:block",
  "i:block-blinkon500-blinkoff500",
  "r-cr:hor20",
  "o:hor50"
}

vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
