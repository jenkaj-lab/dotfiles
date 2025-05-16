local lspconfig = require('lspconfig')

lspconfig.dartls.setup {
  on_attach = function(_, bufnr)
    local opts = { buffer = bufnr }
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  end,
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
}

