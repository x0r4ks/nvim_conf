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

-- Load lsp
require('lsp/lsp-zero')

-- Set Color scheme
vim.cmd[[colorscheme darcula]]
