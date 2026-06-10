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
        "ts_ls",
        "pylsp",
        "golangci_lint_ls",
        "rust_analyzer",
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

    require('lspconfig').clangd.setup {
        cmd = { "clangd", "--background-index" },
        filetypes = { "c", "cpp" },
        root_dir = vim.loop.cwd,
    }

    require'lspconfig'.rust_analyzer.setup{
      capabilities = capabilities,
      settings = {
        ['rust-analyzer'] = {
          diagnostics = {
            enable = false;
          }
        }
      }
    }

    require('lspconfig')['hls'].setup{
      filetypes = { 'haskell', 'lhaskell', 'cabal' },
    }

    require("lspconfig").dockerls.setup{
      capabilities = capabilities,
    }

    require("lspconfig").ts_ls.setup{
      capabilities = capabilities,
      settings = {
        typescript = {
          format = {
            indentSize = vim.o.shiftwidth,
            convertTabsToSpaces = vim.o.expandtab,
            tabSize = vim.o.shiftwidth,
          },
        },
        javascript = {
          format = {
            indentSize = vim.o.shiftwidth,
            convertTabsToSpaces = vim.o.expandtab,
            tabSize = vim.o.shiftwidth,
          },
        },
      },
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

  end,
}
