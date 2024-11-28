vim.cmd("set expandtab")
vim.cmd("set number relativenumber")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=2")
vim.cmd("set virtualedit+=onemore")
vim.diagnostic.config({virtual_text = false})
vim.g.have_nerd_font = true
vim.opt.breakindent = true
vim.g.mapleader = " "
vim.g.background = "dark"
vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

--Move a line up: ddkP

--Move a line down: ddp
