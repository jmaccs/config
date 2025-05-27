return {
  {
    'OXY2DEV/markview.nvim',
    lazy = false, -- Recommended  ft = "markdown",: -- If you decide to lazy-load anyway
    dependencies = {
      -- You will not need this if you installed the
      --     -- parsers manually
      --     -- Or if the parsers are in your $RUNTIMEPATH
      'nvim-treesitter/nvim-treesitter',
      'echasnovski/mini.icons',
      'nvim-tree/nvim-web-devicons', -- use mini.icons
    },
    --   -- commit = "5488c07", -- links in tables fixed
    --   branch = "dev",
    config = function()
      local markview = require 'markview'
      local presets = require 'markview.presets'
      markview.setup {
        -- headings color bg only. no icon no conceal content
      }
    end,
  },
}
