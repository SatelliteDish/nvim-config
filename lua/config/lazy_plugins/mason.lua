return {
	"williamboman/mason.nvim",

  dependencies = {
    "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig"
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "clangd",
        "lua_ls",
        "rust_analyzer",
        "dockerls",
        "tsserver"
      }
    })

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    require("lspconfig").clangd.setup {
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = {"vim"},
          }
        },
      },
    }

    require("lspconfig").rust_analyzer.setup{
      capabilities = capabilities
    }

    require("lspconfig").dockerls.setup{
      capabilities = capabilities 
    }

    require("lspconfig").tsserver.setup{
      capabilities = capabilities
    }

  end,
}
