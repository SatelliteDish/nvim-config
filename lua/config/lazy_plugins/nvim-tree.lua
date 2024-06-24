return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    local tree = require('nvim-tree')
    tree.setup {
      sort = {
        sorter = "extension",
      },
      view = {
        number = true,
        relativenumber = true,
        width = 45,
      },
      renderer = {
        special_files = {
          "Cargo.toml",
          "Makefile",
          "README.md",
          "readme.md",
        },
        highlight_diagnostics = "icon",
        highlight_opened_files = "name",
        highlight_bookmarks = "name"
      },
      diagnostics = {
        enable = true,
      }
    }

    vim.keymap.set('n', '<C-n>', ':NvimTreeFocus<CR>')
    vim.keymap.set('n', '<S-n>', ':NvimTreeClose<CR>')
  end
}
