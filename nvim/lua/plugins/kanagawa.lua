return {
	"rebelot/kanagawa.nvim",
	priority = 2,
	config = function()
		require("kanagawa").setup({
			commentStype = { italic = true },
			theme = "dragon",
		})

		vim.cmd.colorscheme("kanagawa-dragon")
	end,
}
