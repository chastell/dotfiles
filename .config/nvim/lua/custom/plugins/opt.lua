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

vim.opt.wildmode = 'list:longest'
