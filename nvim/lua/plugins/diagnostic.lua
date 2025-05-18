return {
	"folke/trouble.nvim",
	config = function()
		require("trouble").setup({
			opts = {
				position = "bottom",
				height = 10,
				mode = "document_diagnostic",
				use_diagnostic_signs = true,
			},
		})

		vim.keymap.set("n", "<leader>xx", ":Trouble diagnostics toggle<CR>")
	end,
}
