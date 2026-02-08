return { -- Autoformatter
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = true,
    format_on_save = {
      timeout_ms = 500,
      lsp_format = 'fallback',
    },
    formatters_by_ft = {
      -- Conform can also run multiple formatters sequentially
      lua = { 'stylua' },
      python = { 'ruff' },
      markdown = { 'mdformat' },
      tex = { 'tex-fmt' },
      typst = { 'typstyle' },
      html = { 'superhtml' },
    },
  },
}
