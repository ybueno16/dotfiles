return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		opts = {
			transparent_background = true,
		},
		config = function()
			vim.cmd("colorscheme catppuccin-mocha")
			require("catppuccin").setup({
				styles = {
					comments = { "italic" }, -- Change the style of comments
				},
				integrations = {
					cmp = true,
					gitsigns = true,
					treesitter = true,
					barbecue = {
						dim_dirname = true, -- directory name is dimmed by default
						bold_basename = true,
						dim_context = false,
						alt_background = false,
					},
					telescope = {
						enabled = true,
					},
				},
			})
		end,
	},
}
