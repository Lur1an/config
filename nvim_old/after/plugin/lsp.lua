local lsp = require('lsp-zero')
lsp.preset("recommended")
lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer'
})
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
        ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-Space>'] = cmp.mapping.complete(),
})

local lsp_commons = require("lurian.lsp_commons")
lsp.setup_nvim_cmp({ mapping = cmp_mappings })
lsp.on_attach(function(client, bufr)
    lsp_commons.apply_keymaps(bufr)
end
)

lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})
lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})
vim.diagnostic.config({
    virtual_text = true
})

lsp.setup()
