vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

--Synchronizes the system clipboard
--with nvim's clipboard
vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 999

--When editing find and replace = %s/beforetext/aftertext
vim.opt.inccommand = "split"

vim.opt.virtualedit = "block"

--Ignore text casing in command (lower or upper)
vim.opt.ignorecase = true

--Enables wider color support
vim.opt.termguicolors = true

vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = " "
