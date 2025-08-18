vim.opt.syntax = 'ON'
-- Expand tabs to spaces
vim.opt.expandtab = true

function set_tab_width(position_count)
  -- Use the same number of spaces on indenting operations <<
  vim.opt.shiftwidth = position_count
  vim.opt.tabstop = position_count
end

set_tab_width(2)
-- Smart indentation
vim.opt.smartindent = true

vim.cmd.colorscheme('industry')

-- Highlight 80 column as margin
vim.opt.colorcolumn = '80'
-- Number lines
vim.opt.number = true
-- Avoid wrapping
vim.opt.wrap = false
-- Ease switching between buffers
vim.opt.hidden = true
-- Status line = file path, is modified? total lines
vim.opt.statusline = '%F %m lines %L line: %l column: %c'
-- No beeps, no flashes
vim.opt.visualbell = true

-- Always make Unix line endings
vim.opt.ff = 'unix'
-- Save as UTF-8
vim.opt.fileencoding = 'utf-8'

-- Avoid confusion with highlighting matching bracket.
vim.cmd.highlight({"MatchParen", "ctermbg=blue"})
vim.g.matchparen_disable_cursor_hl = 1
