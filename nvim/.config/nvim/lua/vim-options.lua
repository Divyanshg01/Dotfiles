vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set history=1000")

-- show the cursor position
vim.cmd("set ruler")

--show incomplete commands
vim.cmd("set showcmd")
--shows a menu while using tab completion
vim.cmd("set wildmenu")

-- height when you press z Enter
vim.cmd("set scrolloff=5")

vim.cmd("set hlsearch")
vim.cmd("set incsearch")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set number")
--for line wrapping
vim.cmd("set lbr")
--auto indent
vim.cmd("set ai")
vim.cmd("set relativenumber")
vim.cmd("set showbreak=")
vim.cmd("set si")
vim.cmd("set hidden")
vim.cmd("set termguicolors")
vim.cmd("set modifiable")
vim.cmd("set clipboard+=unnamedplus")
vim.keymap.set("n", "ee", "<cmd>q<CR>", {})
vim.keymap.set("n", "<C-e>", "<cmd>qa<CR>", {})
-- vim.keymap.set("n", "fq", "<cmd>q<CR>", {})
-- vim.keymap.set("n", "ff", "<cmd>wa<CR>", {})
-- vim.keymap.set("n", "qq", "<cmd>q<CR>", {})

vim.keymap.set("n", "<S-b>", "<C-o>", {})
vim.opt.termguicolors = true
vim.keymap.set("n", "<C-a>", "<cmd>nohlsearch<CR>", {})
vim.keymap.set("n", "cpl", "yib", {})
vim.g.mapleader = " "
vim.cmd([[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]])
-- vim.cmd [[
--   highlight Normal guibg=none
--   highlight NonText guibg=none
--   highlight Normal ctermbg=none
--   highlight NonText ctermbg=none
-- ]]
-- vim.o.conceallevel = 2
vim.opt.conceallevel = 2
--vim.set("set syntax=enable")
-- vim.cmd("set conceallevel=2")
