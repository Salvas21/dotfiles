vim.keymap.set("n", "k", "j")
vim.keymap.set("n", "j", "k")
vim.keymap.set("o", "k", "j")
vim.keymap.set("o", "j", "k")

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "J", ":m '<-2<CR>gv=gv")


vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "J", ":m '<-2<CR>gv=gv")
