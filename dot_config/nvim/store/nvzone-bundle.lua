return {

  {
    'nvzone/typr',
    dependencies = 'nvzone/volt',
    opts = {},
    cmd = { 'Typr', 'TyprStats' },
  },
  { 'nvzone/volt', lazy = true },

  {
    'nvzone/minty',
    cmd = { 'Shades', 'Huefy' },
  },
  { 'nvzone/menu', lazy = true },
  { 'nvzone/timerly', cmd = 'TimerlyToggle' },
}
