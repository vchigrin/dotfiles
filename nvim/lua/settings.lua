vim.api.nvim_set_option_value('syntax', 'ON', {})
-- Expand tabs to spaces
vim.api.nvim_set_option_value('expandtab', true, {})

function set_tab_width(position_count)
  -- Use the same number of spaces on indenting operations <<
  vim.api.nvim_set_option_value('shiftwidth', position_count, {})
  vim.api.nvim_set_option_value('tabstop', position_count, {})
end

set_tab_width(2)
-- Smart indentation
vim.api.nvim_set_option_value('smartindent', true, {})

--vim.api.nvim_set_option_value('colorscheme', 'industry', {})
vim.cmd('colorscheme industry')

-- Highlight 80 column as margin
vim.api.nvim_set_option_value('colorcolumn', '80', {})
-- Number lines
vim.api.nvim_set_option_value('number', true, {})
-- Avoid wrapping
vim.api.nvim_set_option_value('wrap', false, {})
-- Ease switching between buffers
vim.api.nvim_set_option_value('hidden', true, {})
-- Status line = file path, is modified? total lines
vim.api.nvim_set_option_value('statusline', '%F %m lines %L line: %l column: %c', {})
-- No beeps, no flashes
vim.api.nvim_set_option_value('visualbell', true, {})

-- Always make Unix line endings
vim.api.nvim_set_option_value('ff', 'unix', {})
-- Save as UTF-8
vim.api.nvim_set_option_value('fileencoding', 'utf-8', {})

-- Avoid confusion with highlighting matching bracket.
vim.cmd.highlight({"MatchParen", "ctermbg=blue"})
vim.g.matchparen_disable_cursor_hl = 1
