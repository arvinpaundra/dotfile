return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			sources = { "filesystem", "buffers", "git_status" },
			default_component_configs = {
				icon = {
					enable = false,
				},
				git_status = {
					symbols = {
						added = "A", -- Added
						modified = "M", -- Modified
						deleted = "D", -- Deleted
						renamed = "R", -- Renamed
						untracked = "U", -- Untracked
						ignored = "I", -- Ignored
						unstaged = "UNSTG", -- Still Modified
						staged = "S", -- Staged
						conflict = "C", -- Conflict
					},
				},
			},
			filesystem = {
				follow_current_file = { enabled = true },
				group_empty_dirs = true,
				use_libuv_file_watcher = true,
				hijack_netrw_behavior = "open_default",
			},
			window = {
				width = 35,
			},
		})

		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})

		vim.cmd([[
				highlight NeoTreeGitUnstaged guifg=#e5c07b
				highlight NeoTreeGitStaged guifg=#98c379
				highlight NeoTreeGitUntracked guifg=#61afef
				highlight NeoTreeGitModified guifg=#e5c07b
				highlight NeoTreeGitAdded guifg=#98c379
				highlight NeoTreeGitDeleted guifg=#e06c75
				highlight NeoTreeGitRenamed guifg=#56b6c2
				highlight NeoTreeGitIgnored guifg=#5c6370
				highlight NeoTreeGitConflict guifg=#e06c75
		]])
	end,
}
