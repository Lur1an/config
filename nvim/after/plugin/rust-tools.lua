local rt = require("rust-tools")
local lsp_commons = require("lurian.lsp_commons")
rt.setup({
    tools = {
        inlay_hints = {
            auto = true,
            only_current_line = true,
            show_parameter_hints = true
        }
    },
    server = {
        standalone = true,
        on_attach = function(_, bufnr)
            --format_on_save(bufnr)
            lsp_commons.apply_keymaps(bufr)
        end,
        capabilities = capabilities,
        cmd = { "rustup", "run", "stable", "rust-analyzer" },
        settings = {
            ["rust-analyzer"] = {
                checkOnSave = { command = "clippy" },
                inlayHints = { locationLinks = false }
            }
        }
    },
})
