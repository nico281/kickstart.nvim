return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  setup = function()
    local kanagawa = require "kanagawa";
    kanagawa.setup {
      transparent = true,
    };
  end,
}

