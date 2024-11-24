return {
  {
    'adam12/ruby-lsp.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'neovim/nvim-lspconfig',
    },
    config = true,
    opts = {
      lspconfig = {
        servers = {
          solargraph = { autostart = false },
          ruby_lsp = {},
        },
      },
    },
  },
}
