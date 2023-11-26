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
require('plugins/gitsign')
require('plugins/toggle-term')
require('plugins/bqf')

-- Load lsp
require('lsp/lsp-zero')

-- autocommands
require('core/autocommands')

-- Set Color scheme

-- require('theme-name').setup {
--     style = 'theme-style'
-- }
-- require('theme-name').load()


require'lualine'.setup {
    options = {
        theme = 'gruvbox-material'
    }
}

vim.g.codeium_disable_bindings = 1

vim.cmd[[colorscheme gruvbox-material]]
