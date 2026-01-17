vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local opts = { noremap = true, silent = true }

-- Save current file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- Close current buffer
vim.keymap.set('n', '<C-w>', '<cmd> q <CR>', opts)

-- Force close current buffer
vim.keymap.set('n', '<C-w-w>', '<cmd> q! <CR>', opts)


