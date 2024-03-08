return {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {
      notify_on_error = false,
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        javascript = { 'prettier', 'prettierd' },
        typescript = { 'prettier', 'prettierd'},
        typescriptreact = { 'prettier', 'prettierd'},
        javascriptreact = { 'prettier', 'prettierd'},
        css = { 'prettier', 'prettierd' },
        scss = { 'prettier', 'prettierd' },
        html = { 'prettier', 'prettierd' },
        json = { 'prettier', 'prettierd'},
        astro = { 'prettier', 'prettierd'},
        format_on_save = {
          lsp_fallback = true,
          async = false,
          timeout_ms = 500,
        },
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- You can use a sub-list to tell conform to run *until* a formatter
        -- is found.
        -- javascript = { { "prettierd", "prettier" } },
      },
    },
  }
