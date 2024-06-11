return {
	"lalitmee/browse.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	config = function()
		require("browse").setup({
			provider = "google",
			bookmarks = {},
			icons = {
				bookmark_alias = "",
				bookmarks_prompt = "󰂺 ",
				grouped_bookmarks = "",
			}
		})
		vim.keymap.set("n", "<leader>bs", function()
			require("browse").input_search()
		end)

		vim.keymap.set("n", "<leader>bb", function()
			require("browse").browse({ bookmarks = bookmarks })
		end)
	end
}
