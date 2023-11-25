local lsp = require('lsp-zero').preset({})
local cmp = require('cmp')
local keymaps = require('core.keymaps')
local options = require('core.options')

lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»',
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    [keymaps.autocomplete_key_confirm] = cmp.mapping.confirm({select = false}),
    [keymaps.autocomplete_key_prev] = cmp.mapping.select_prev_item(cmp_select),
    [keymaps.autocomplete_key_next] = cmp.mapping.select_next_item(cmp_select),
  }),
})

