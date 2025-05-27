vim.cmd 'let g:netrw_liststyle = 3'

local opt = vim.opt

vim.g.have_nerd_font = true

vim.g.lazyvim_picker = 'fzf-lua'
vim.g.python3_host_prog = os.getenv 'HOME' .. '/.uv/.venv/bin/'
vim.g.loaded_ruby_provider = 0
opt.number = true
opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
opt.clipboard:append 'unnamedplus'

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Enable break indent
opt.breakindent = true

opt.wrap = true
opt.linebreak = true
opt.breakindent = true
-- Save undo history
opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
opt.signcolumn = 'yes'

-- Decrease update time
opt.updatetime = 450

opt.timeoutlen = 300

opt.splitright = true
opt.splitbelow = true

opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

opt.inccommand = 'split'

opt.cursorline = true

opt.scrolloff = 10
opt.termguicolors = true

-- unused lsp

-- opt.loaded_ruby_provider = 0
