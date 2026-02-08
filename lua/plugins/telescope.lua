return { -- Fuzzy Finder (files, lsp, etc)
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',

      build = 'make',
    },

    -- Useful for getting pretty icons, but requires a Nerd Font.
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  config = function()
    -- enable wrapping in preview window
    vim.api.nvim_create_autocmd('User', {
      pattern = 'TelescopePreviewerLoaded',
      callback = function(args)
        vim.wo.wrap = true
        vim.wo.number = true
      end,
    })

    -- See `:help telescope.builtin`
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
  end,
}
