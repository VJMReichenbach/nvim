vim.pack.add {
  {
    src = 'https://github.com/nvim-telescope/telescope.nvim.git',
    version = vim.version.range '*',
  },
  -- dependencies
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
  -- TODO: figure out how to do this
  --     {
  --       'nvim-telescope/telescope-fzf-native.nvim',
  --
  --       build = 'make',
  --     },
}

local builtin = require 'telescope.builtin'
vim.keymap.set(
  'n',
  '<leader>ff',
  builtin.find_files,
  { desc = '[F]ind [F]iles' }
)
vim.keymap.set(
  'n',
  '<leader>fa',
  builtin.live_grep,
  { desc = '[F]ind across [A]ll files' }
)
vim.keymap.set(
  'n',
  '<leader>fh',
  builtin.help_tags,
  { desc = '[F]ind in [H]elp' }
)
vim.keymap.set(
  'n',
  '<leader>fc',
  builtin.current_buffer_fuzzy_find,
  { desc = '[F]uzzily search in [C]urrent buffer' }
)
