local lsp = require('lsp-zero')
lsp.preset("recommended")
lsp.ensure_installed({
    'tsserver',
    'eslint',
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

lsp.setup()
