return {
  "rebelot/kanagawa.nvim",
	priority = 1000,
	config = function()
		vim.o.termguicolors = true
		vim.cmd([[colorscheme kanagawa-dragon]])
	end,
}
