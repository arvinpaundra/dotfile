vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set hidden")
vim.cmd("set number")
vim.cmd("set undofile")
vim.cmd("set splitright")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set confirm")
vim.cmd("set nowrap")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.g.mapleader = " "

-- Folding
vim.o.foldlevel = 99    -- Start with all folds open
vim.o.foldenable = true -- Enable folding by default

-- Move a line in normal mode
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==") -- move down
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==") -- move up

-- Move a line in visual mode
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move down
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move up
