require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
    "clangd",
		"lua_ls",
		"rust_analyzer",
		"dockerls",
		"tsserver",
		"vimls"
	}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.clangd.setup {
  capabilites = capabilities,
  filetypes = {
    "c",
    "cpp"
  },
}

require("lspconfig").lua_ls.setup {
	capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'},
      },
    },
  },
}

require'lspconfig'.rust_analyzer.setup{
	capabilities = capabilities

}
require'lspconfig'.dockerls.setup{
	capabilities = capabilities
}

require'lspconfig'.tsserver.setup{
	capabilities = capabilities
}

require'lspconfig'.vimls.setup{
	capabilities = capabilities
}
