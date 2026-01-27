local keymap = vim.keymap.set

--keymap("n", "<Tab>", ": bnext<CR>", { noremap = true, silent = true })
--keymap("n", "<S-Tab>", ":bprev<CR>", { noremap = true, silent = true })
keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
keymap("n", "<S-n>", ":Neotree<CR>", { noremap = true, silent = true })

