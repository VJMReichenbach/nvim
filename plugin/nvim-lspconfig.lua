vim.pack.add {
  'https://github.com/j-hui/fidget.nvim.git',
  { src = 'https://github.com/neovim/nvim-lspconfig' },
}

require('fidget').setup {
  progress = {
    display = {
      render_limit = 5,
    },
  },
  notification = {
    window = {
      winblend = 0,
      border = 'rounded',
    },
  },
}

-- Enable the following language servers
local servers = {
  'ruff', -- Python linter
  'ty', -- Python type checker
  'rust_analyzer', -- Rust language server
  'ts_ls', -- TypeScript language server
  'oxlint', -- TypeScript linter
  'lua_ls', -- Lua language server
  'texlab', -- LaTeX language server
  'tinymist', -- Typst lsp
}

for _, server in pairs(servers) do
  vim.lsp.enable(server)
end
