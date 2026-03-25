vim.pack.add {
  'https://github.com/rafamadriz/friendly-snippets.git',
  {
    src = 'https://github.com/saghen/blink.cmp.git',
    version = vim.version.range '1',
  },
}

require('blink.cmp').setup {
  completion = { documentation = { auto_show = true } },
  signature = { enabled = true },
}
