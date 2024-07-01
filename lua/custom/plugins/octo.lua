return {
  'pwntester/octo.nvim',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    -- OR 'ibhagwan/fzf-lua',
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    suppress_missing_scope = {
      projects_v2 = true,
    },
  },
  config = function()
    require('octo').setup()
  end,
}
