-- Trim trailing whitespace

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function ()
    vim.cmd("%s/\\s\\+$//e")
  end,
})
