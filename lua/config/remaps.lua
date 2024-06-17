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

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>ex', vim.cmd.Ex, {})
