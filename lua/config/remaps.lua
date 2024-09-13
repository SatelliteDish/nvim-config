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

vim.keymap.set('n', '<Tab>', 'mp^i<Tab><C-c>`p')
vim.keymap.set('n', '<C-/>', 'mp0i//<C-c>`p')

vim.keymap.set('n', '<leader> ', ':lua vim.diagnostic.open_float()<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
-- Yank into system clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y') -- yank motion
vim.keymap.set({'n', 'v'}, '<leader>Y', '"+Y') -- yank line

-- Delete into system clipboard
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d') -- delete motion
vim.keymap.set({'n', 'v'}, '<leader>D', '"+D') -- delete line

-- Paste from system clipboard
vim.keymap.set('n', '<leader>p', '"+p')  -- paste after cursor
vim.keymap.set('n', '<leader>P', '"+P')  -- paste before cursor
