return { -- Autoformat
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = false,
    format_on_save = {
      timeout_ms = 500,
      lazy = false,
      lsp_fallback = true,
    },
    lint_on_save = {
      timeout_ms = 500,
      lazy = false,
      lsp_fallback = true,
    },

    formatters_by_ft = {
      lua = { 'stylua' },
      -- Conform can also run multiple formatters sequentially
      -- python = { "isort", "black" },
      --
      -- You can use a sub-list to tell conform to run *until* a formatter
      -- is found.
      javascript = { 'prettierd', 'prettier' },
      typescript = { 'prettierd', 'prettier' },
      nest = { 'prettierd', 'prettier' },
      nextjs = { 'prettierd', 'prettier' },
      css = { 'prettierd', 'prettier' },
      scss = { 'prettierd', 'prettier' },
      tsx = { 'prettierd', 'prettier' },
      html = { 'prettierd', 'prettier' },
      json = { 'prettierd', 'prettier' },
      react = { 'prettierd', 'prettier' },
      yaml = { 'prettier' },
    },
  },
}
