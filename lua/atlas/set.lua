-- Relative numbers and line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- 4 space indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- No wrap
vim.opt.wrap = false

-- Long and presistant undotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Remove search highlight after search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Start scroll 8 lines past top
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Fast update time
vim.opt.updatetime = 50

-- Space leader
vim.g.mapleader = " "

vim.opt.colorcolumn = "80"
vim.opt.termguicolors = true
