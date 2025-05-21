return {
	"Shatur/neovim-session-manager",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local path = require("plenary.path")
		local session_manager = require("session_manager")

		session_manager.setup({
			session_dir = path:new(vim.fn.stdpath("data"), "sessions"),
			autoload_mode = require("session_manager.config").AutoloadMode.CurrentDir,
			autosave_last_session = true,
			autosave_ignore_filetypes = { "neo-tree", "dashboard" },
		})
	end,
}
