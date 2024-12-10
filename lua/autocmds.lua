vim.api.nvim_create_autocmd("BufLeave", {
  pattern = "*",
  group = vim.api.nvim_create_augroup("TabuflineHide", { clear = true }),
  callback = function()
    vim.schedule(function()
      if #vim.t.bufs <= 1 and #vim.api.nvim_list_tabpages() <= 1 then
        vim.o.showtabline = 0
      else
        vim.o.showtabline = 2
      end
    end)
  end,
})
