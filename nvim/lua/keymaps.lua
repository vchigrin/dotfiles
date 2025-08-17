-- Split lines with K button.
vim.api.nvim_set_keymap('n', 'K', 'i<CR><Esc>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Esc>', ':noh<return><Esc>', {noremap = true})
-- nvim-tree plugin
vim.api.nvim_set_keymap('n', '<F3>', ':NvimTreeToggle<return>', {noremap = true})
