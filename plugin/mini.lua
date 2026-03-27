vim.pack.add { 'https://github.com/nvim-mini/mini.nvim.git' }

-- Better Around/Inside textobjects
--
-- Examples:
--  - va)  - [V]isually select [A]round [)]paren
--  - yinq - [Y]ank [I]nside [N]ext [Q]uote
--  - ci'  - [C]hange [I]nside [']quote
require('mini.ai').setup { n_lines = 500 }

-- Add/delete/replace surroundings (brackets, quotes, etc.)
--
-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
-- - sd'   - [S]urround [D]elete [']quotes
-- - sr)'  - [S]urround [R]eplace [)] [']
require('mini.surround').setup()

-- Simple and easy statusline.
--  You could remove this setup call if you don't like it,
--  and try some other statusline plugin
local statusline = require 'mini.statusline'
-- set use_icons to true if you have a Nerd Font
statusline.setup { use_icons = vim.g.have_nerd_font }

-- You can configure sections in the statusline by overriding their
-- default behavior. For example, here we set the section for
-- cursor location to LINE:COLUMN
---@diagnostic disable-next-line: duplicate-set-field
statusline.section_location = function()
  return '%2l:%-2v'
end

-- Telescope replacement
local win_config = function()
  local height = math.floor(0.618 * vim.o.lines)
  local width = math.floor(0.618 * vim.o.columns)
  return {
    anchor = 'NW',
    height = height,
    width = width,
    row = math.floor(0.5 * (vim.o.lines - height)),
    col = math.floor(0.5 * (vim.o.columns - width)),
  }
end
require('mini.pick').setup {
  window = {
    config = win_config,
  },
}

vim.keymap.set(
  'n',
  '<leader>ff',
  MiniPick.builtin.files,
  { desc = '[F]ind [F]iles' }
)
vim.keymap.set(
  'n',
  '<leader>fa',
  MiniPick.builtin.grep_live,
  { desc = '[F]ind across [A]ll files' }
)
vim.keymap.set(
  'n',
  '<leader>fh',
  MiniPick.builtin.help,
  { desc = '[F]ind in [H]elp' }
)

require('mini.move').setup {
  mappings = {
    -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
    left = '<M-H>',
    right = '<M-L>',
    down = '<M-J>',
    up = '<M-K>',

    -- Move current line in Normal mode
    line_left = '<M-H>',
    line_right = '<M-L>',
    line_down = '<M-J>',
    line_up = '<M-K>',
  },
}

require('mini.cursorword').setup {
  -- Delay (in ms) between when cursor moved and when highlighting appeared
  delay = 1000,
}
