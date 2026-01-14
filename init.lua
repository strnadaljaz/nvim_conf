require("config.lazy")
require("config.keymaps")

vim.opt.guicursor = {
    "i:underline-blinkon400-blinkoff400",
}

vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
