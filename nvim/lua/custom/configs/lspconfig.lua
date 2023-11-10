local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
---@diagnostic disable-next-line: different-requires
local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

lspconfig.rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "rust", "rs" },
    root_dir = util.root_pattern "Cargo.toml",
    settings = {
        ["rust-analyzer"] = {
            assist = {
                importGranularity = "module",
                importPrefix = "by_self",
            },
            cargo = {
                features = {"napi"},
                buildScripts = {
                    enable = true,
                },
                allFeatures = true,
            },
            procMacro = {
                enable = true,
            },
        },
    },
}

-- if you just want default config for the servers then put them in a table
local servers = {
    "tailwindcss",
    "svelte",
    "html",
    "cssls",
    "tsserver",
    "pyright",
    "nil",
    "marksman",
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

vim.lsp.buf.format {
    filter = function(client)
        return client.name ~= "tsserver"
    end,
}
