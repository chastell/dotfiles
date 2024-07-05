vim.api.nvim_create_autocmd('BufWinEnter', {
  pattern = '*.rbi',
  command = 'set filetype=ruby',
})
