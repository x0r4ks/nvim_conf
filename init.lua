-- Load Core
require('core/options')
require('core/keymaps')
require('core/lazy')

-- Load plugins
require('plugins/treesitter')
require('plugins/lualine')
require('plugins/notify')
require('plugins/comment')
require('plugins/autopairs')
require('plugins/hex-nvim')
require('plugins/outline')
require('plugins/nullls')
-- Load lsp
require('lsp/lsp-zero')

-- autocommands
require('core/autocommands')

-- Set Color scheme
vim.cmd [[colorscheme darcula]]
