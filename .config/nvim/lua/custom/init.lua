vim.api.nvim_create_autocmd('BufWinEnter', {
  pattern = '*.rbi',
  command = 'set filetype=ruby',
})

if vim.env.SPIN then
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
end

vim.keymap.set('n', '<enter>', '<cmd>wall<enter>')
vim.keymap.set('n', '<s-down>', 'O<esc><down>')

vim.opt.wildmode = 'list:longest'
