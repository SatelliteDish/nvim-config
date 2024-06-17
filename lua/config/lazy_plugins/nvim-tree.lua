return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    local tree = require('nvim-tree')
    tree.setup()

    vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
  end
}