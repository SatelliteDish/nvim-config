return {
	"nvim-treesitter/nvim-treesitter",
	enabled = true,
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		--configure treesitter
		treesitter.setup({
			highlight = {
				enable = true,
			},
			--enable indentation
			indent = { enable = true },
			
			--ensure these language parsers are installed
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"query",
				"c",
				"rust",
				"c_sharp"
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>"
				}
			}
		})
	end
}
