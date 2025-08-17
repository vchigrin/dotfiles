local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'nvim-tree/nvim-tree.lua'

vim.call('plug#end')
vim.call('PlugInstall')
