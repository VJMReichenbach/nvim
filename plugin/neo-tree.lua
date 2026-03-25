vim.pack.add {
  {
    src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
    version = vim.version.range '3',
  },
  -- dependencies
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
}

require('neo-tree').setup {
  -- not needed bacause float position
  -- close_if_last_window = true,
  filesystem = {
    window = {
      position = 'float',
      popup = { -- applies to floating window only
        size = { height = '80%', width = '80%' },
        position = '50%',
      },
      mappings = {
        -- disable space (usually a selector, but <CR> is also ok)
        ['<space>'] = 'noop',
      },
    },
    filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = false,
    },
  },
}
vim.keymap.set(
  'n',
  '<leader>e',
  '<cmd>Neotree toggle<CR>',
  { desc = 'Neo Tree [E]xplorer' }
)
