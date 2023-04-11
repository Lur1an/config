---@type MappingsTable
local M = {}

M.disabled = {
    n = {
        ["<leader>x"] = "",
        ["<leader>v"] = "",
        ["<leader>h"] = "",
        ["<leader>n"] = "",
        ["<leader>rn"] = "",
    },
}

M.dap = {
    n = {
        ["<leader>b"] = {
            function()
                require("dap").toggle_breakpoint()
            end,
            "toggle breakpoint",
        },
    },
}

M.telescope = {
    n = {
        ["<C-p>"] = { "<cmd> Telescope git_files <CR>", "find git files" },
    },
}
M.general = {
    n = {
        ["q"] = {
            function()
                require("nvchad_ui.tabufline").close_buffer()
            end,
            "close buffer",
        },
        [";"] = { ":", "enter command mode", opts = { nowait = true } },
        ["n"] = { "nzzzv", "find next occurrence" },
        ["N"] = { "Nzzzv", "find previous occurrence" },
        ["<leader>k"] = { ":lnext<CR>zz", "location next" },
        ["<leader>j"] = { ":lprev<CR>zz", "location previous" },
        ["<C-u>"] = { "<C-u>zz", "scroll up" },
        ["<C-d>"] = { "<C-d>zz", "scroll down" },
        ["<leader>d"] = { '"_d', "delete into void" },
    },
    v = {
        ["K"] = { ":m'<-2<CR>gv=gv", "move selection up" },
        ["J"] = { ":m'>+1<CR>gv=gv", "move selection down" },
        ["("] = { "c()<C-c>P", "surround with '()'" },
        ["{"] = { "c{}<C-c>P", "surround with '{}'" },
        ["["] = { "c[]<C-c>P", "surround with '[]'" },
        ["'"] = { "c''<C-c>P", "surround with single quotes" },
        ['"'] = { 'c""<C-c>P", "surround with double quotes' },
        ["`"] = { 'c``<C-c>P", "surround with tacks' },
        ["<leader>d"] = { '"_d', "delete into void" },
        ["<leader>p"] = { '"_p', "paste and delete previous into void" },
    },
}

M.harpoon = {
    n = {
        ["<C-e>"] = {
            function()
                require("harpoon.ui").toggle_quick_menu()
            end,
            "toggle quick menu",
        },
        ["<leader>a"] = {
            function()
                require("harpoon.mark").add_file()
            end,
            "add file",
        },
        ["<C-m>"] = {
            function()
                require("harpoon.ui").nav_file(1)
            end,
            "nav file 1",
        },
    },
}

-- more keybinds!

return M
