vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd('set number')
vim.cmd('set relativenumber')

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

require("config")
require('hologram').setup{
    auto_display = true -- WIP automatic markdown image display, may be prone to breaking
}
