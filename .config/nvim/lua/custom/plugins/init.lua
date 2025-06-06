return {
  { 'bogado/file-line' },
  {
    'kdheepak/lazygit.nvim',
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        solargraph = { autostart = false },
        ruby_lsp = {},
      },
    },
  },
  {
    'adam12/ruby-lsp.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'neovim/nvim-lspconfig',
    },
    config = true,
  },
  { 'iberianpig/tig-explorer.vim' },
}
