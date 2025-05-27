return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacksConfig
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      explorer = { enabled = true },
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      image = { enabled = true},
      picker = { enabled = false },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = false },
      words = { enabled = true },
    },
  },
}
