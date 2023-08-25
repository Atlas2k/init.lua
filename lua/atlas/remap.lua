vim.g.mapleader = " "

-- Cool visual mode code move remap
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center screen when using half screen vertical motion
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Center screen when using next motion
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Don't change copy buffer when pasting over in visual mode when using leader p
vim.keymap.set("x", "<leader>p", "\"_dp")

-- Yank into system clipboard when copying using leader y
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Just no.
vim.keymap.set("n", "Q", "<nop>")

-- Cool find and replace remap
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
