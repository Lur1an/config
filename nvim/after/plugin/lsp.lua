local lsp = require('lsp-zero')
lsp.preset("recommended")
lsp.ensure_installed({
    'tsserver',
    'eslint',
    'sumneko_lua',
    'rust_analyzer',
})
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-Space>'] = cmp.mapping.complete(),
})
lsp.setup_nvim_cmp({ mapping = cmp_mappings })
lsp.on_attach(function(client, buf)
    local opts = { buffer = buf, remap = false}
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set('n', '<leader>k', vim.lsp.buf.signature_help, opts)
    end
)
lsp.setup()
