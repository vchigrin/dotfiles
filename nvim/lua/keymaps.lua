-- Split lines with K button.
vim.api.nvim_set_keymap('n', 'K', 'i<CR><Esc>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Esc>', ':noh<return><Esc>', {noremap = true})
-- nvim-tree plugin
vim.api.nvim_set_keymap('n', '<F3>', ':NvimTreeToggle %:h<return>', {noremap = true})
-- nvim-lspconfig plugin
vim.api.nvim_set_keymap('n', '<F5>', ':LspClangdSwitchSourceHeader<return>', {noremap = true})
-- fzf plugin
vim.api.nvim_set_keymap('n', '<F8>', ':Files<return>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F9>', ':Buffers<return>', {noremap = true})
-- tagbar plugin
vim.api.nvim_set_keymap('n', '<F4>', ':TagbarToggle<return>', {noremap = true})
-- trouble plugin
vim.api.nvim_set_keymap('n', '<F2>', ':Trouble diagnostics toggle<return>', {noremap = true})
-- Toggle inlay hints
vim.keymap.set('n', '<Leader>t', function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end)
