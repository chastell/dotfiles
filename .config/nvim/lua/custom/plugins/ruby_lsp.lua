return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        solargraph = { autostart = false },
        ruby_lsp = {},
      },
    },
  },
}
