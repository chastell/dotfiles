vim.api.nvim_create_autocmd('BufWinEnter', {
  pattern = '*.rbi',
  command = 'set filetype=ruby',
})

vim.g.clipboard = {
  name = 'pbcopy',
  copy = {
    ['*'] = 'pbcopy',
    ['+'] = 'pbcopy',
  },
  paste = {
    ['*'] = 'pbpaste',
    ['+'] = 'pbpaste',
  },
  cache_enabled = 1,
}

vim.keymap.set('n', '<enter>', '<cmd>wall<enter>')
vim.keymap.set('n', '<s-down>', 'O<esc><down>')

vim.opt.wildmode = 'list:longest'
