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
        "dockerls",
        "tsserver",
        "pylsp",
        "golangci_lint_ls",
      }
    })

    local capabilities = require("cmp_nvim_lsp").default_capabilities()


    require("lspconfig").lua_ls.setup {
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = {"vim"},
          }
        },
      },
    }

    require("lspconfig").clangd.setup {
      capabilities = capabilities,
    }

    require("lspconfig").dockerls.setup{
      capabilities = capabilities 
    }

    require("lspconfig").tsserver.setup{
      capabilities = capabilities,
    }

    require'lspconfig'.pylsp.setup{
      settings = {
        pylsp = {
          plugins = {
            pycodestyle = {
              ignore = {'W391'},
              dockerlsmaxLineLength = 100
            }
          }
        }
      }
    }

    require('lspconfig').yamlls.setup {
      -- other configuration for setup {}
      settings = {
        yaml = {
          -- other settings. note this overrides the lspconfig defaults.
          schemas = {
            ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
            ["../path/relative/to/file.yml"] = "/.github/workflows/*",
            ["/path/from/root/of/project"] = "/.github/workflows/*",
          },
        },
      }
    }

  end,
}
