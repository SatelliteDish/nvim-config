vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.expandtab = true
vim.opt.shiftround = true

vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.showcmd = true



vim.keymap.set('i', '<C-k>', '<C-c>ddkkpi')
vim.keymap.set('i', '<C-Up>', '<C-c>ddkkpi')
vim.keymap.set('i', '<C-j>', '<C-c>ddpi')
vim.keymap.set('i', '<C-Down>', '<C-c>ddpi')

vim.keymap.set('n', '<C-k>', 'ddkkp')
vim.keymap.set('n', '<C-Up>', 'ddkkp')
vim.keymap.set('n', '<C-j>', 'ddp')
vim.keymap.set('n', '<C-Down>', 'ddp')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
