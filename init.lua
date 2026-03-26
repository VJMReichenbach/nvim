vim.g.have_nerd_font = true
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.breakindent = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.inccommand = 'split'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.showmode = false
vim.opt.signcolumn = 'yes'
vim.opt.smartcase = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.timeoutlen = 300
vim.opt.undofile = true
vim.opt.updatetime = 250

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- add filetype for gitconfig
vim.filetype.add {
  extension = {
    gitconfig = 'gitconfig',
    sshconfig = 'sshconfig',
    ghostty = 'config',
    kanata = 'lisp',
  },
}

-- import keymaps
require 'keymaps'

-- do colorscheme here so it is already set for plugin installation
vim.pack.add {
  { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' },
}
require('catppuccin').setup {
  flavour = 'mocha',
  transparent_background = true,
  float = {
    transparent = false, -- enable transparent floating windows
    solid = false, -- use solid styling for floating windows, see |winborder|
  },
}

vim.cmd.colorscheme 'catppuccin-mocha'
