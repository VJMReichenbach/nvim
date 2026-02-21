return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
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
  end,
}
