local cmp = require('cmp')

cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For LuaSnip users
    end,
  },
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm { select = true }, -- Accept selected item
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' }, -- LSP completions
    { name = 'luasnip' },  -- Snippet completions
    { name = 'buffer' },   -- Buffer completions
    { name = 'path' },     -- Path completions
  }),
}

