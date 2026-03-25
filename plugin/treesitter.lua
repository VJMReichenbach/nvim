vim.pack.add {
  'https://github.com/nvim-treesitter/nvim-treesitter.git',
  'https://github.com/mks-h/treesitter-autoinstall.nvim.git',
}

-- Run TSUpdate headlessly after pack sync, or on startup if parsers missing
vim.api.nvim_create_autocmd('VimEnter', {
  once = true,
  callback = function()
    -- Only run if parsers directory is empty/missing
    local parser_dir = vim.fn.stdpath 'data'
      .. '/site/pack/plugins/start/nvim-treesitter/parser'
    if
      vim.fn.isdirectory(parser_dir) == 0
      or vim.fn.empty(vim.fn.glob(parser_dir .. '/*.so')) == 1
    then
      vim.cmd 'silent TSUpdate'
    end
  end,
})

local filetypes = {
  'bash',
  'diff',
  'latex',
  'lua',
  'markdown',
  'markdown_inline',
  'nu',
  'python',
  'rust',
  'typescript',
  'vim',
  'vimdoc',
}

require('nvim-treesitter').install(filetypes)
vim.api.nvim_create_autocmd('FileType', {
  pattern = filetypes,
  callback = function()
    vim.treesitter.start()
  end,
})

require('treesitter-autoinstall').setup {
  ignore = { 'latex' },
  highlight = true,
  regex = {},
}
