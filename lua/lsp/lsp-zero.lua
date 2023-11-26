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

  formatting = {
      -- changing the order of fields so the icon is the first
      fields = {'menu', 'abbr', 'kind'},
      -- here is where the change happens
      format = function(entry, item)
      local menu_icon = {
        nvim_lsp = 'λ',
        luasnip = '⋗',
        buffer = 'Ω',
        path = '🖫',
        nvim_lua = 'Π',
      }

      item.menu = menu_icon[entry.source.name]
      return item
    end,
  }, 

})

if options.autoformatting then
    lsp.on_attach(function(client, bufnr)
      lsp.default_keymaps({buffer = bufnr})
    
      -- make sure you use clients with formatting capabilities
      -- otherwise you'll get a warning message
      if client.supports_method('textDocument/formatting') then
        require('lsp-format').on_attach(client)
      end
    end)
end
