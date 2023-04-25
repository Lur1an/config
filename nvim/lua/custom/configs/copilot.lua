local M = {}

M.suggestion = {
    auto_trigger = true,
    enabled = true,
    keymap = {
        accept = "<S-Tab>",
        next = "<M-n>",
        prev = "<M-p>",
    }
}

M.filetypes = {
    yaml = true
}

return M
