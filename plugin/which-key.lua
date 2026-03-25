vim.pack.add {
  { src = 'https://github.com/folke/which-key.nvim.git', name = 'which-key' },
}

require('which-key').add {
  { '<leader>b', group = '[B]uffer' },
  { '<leader>p', group = 'Vim [P]ack' },
  { '<leader>f', group = '[F]ind' },
}
