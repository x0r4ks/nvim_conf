local buildin = require('telescope.buildin')
local keymaps = require('core.keymaps')

vim.keymap.set('n', keymaps.telescope_goto_referenses, buildin.lsp_references, {norepam = true, silent = true})
vim.keymap.set('n', keymaps.telescope_goto_definitions, buildin.lsp_definition, {norepam = true, silent = true})
