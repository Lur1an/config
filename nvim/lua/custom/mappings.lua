---@diagnostic disable: different-requires
---@type MappingsTable
local M = {}

M.disabled = {
    n = {
        ["<C-n>"] = "",
        ["<C-s>"] = "",
        ["<leader>e"] = "",
        ["<leader>x"] = "",
        ["<leader>v"] = "",
        ["<leader>h"] = "",
        ["<leader>n"] = "",
        ["<leader>rn"] = "",
    },
}

M.dap = {
    n = {
        ["<C-y>"] = {
            function()
                require("dapui").toggle()
            end,
            "toggle ui",
        },
        ["<leader>b"] = {
            function()
                require("dap").toggle_breakpoint()
            end,
            "toggle breakpoint",
        },
        ["<F9>"] = {
            function()
                require("custom.language_mappings").debug_test[vim.bo.filetype]()
            end,
            "debug test",
        },
        ["<F10>"] = {
            function()
                require("dap").step_over()
            end,
            "step over",
        },
        ["<F5>"] = {
            function()
                require("dap").continue()
            end,
            "continue",
        },
        ["<S-F5>"] = {
            function()
                require("dap").restart()
            end,
            "continue",
        },
        ["<F8>"] = {
            function()
                require("dap").terminate()
            end,
            "continue",
        },
    },
    v = {
        ["<C-k>"] = {
            function()
                require("dapui").eval()
            end,
            "evaluate selection",
        },
    },
}

M.gpt = {
    n = {
        ["<leader>gpt"] = {
            function()
                require("chatgpt").openChat()
            end,
        },
    },
}

M.general = {
    i = {
        ["<C-c>"] = { "<cmd> w <CR><ESC>", "save and exit insert mode" },
    },
    n = {
        ["q"] = {
            function()
                require("nvchad.tabufline").close_buffer()
            end,
            "close buffer",
        },
        -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
        ["n"] = { "nzzzv", "find next occurrence" },
        ["N"] = { "Nzzzv", "find previous occurrence" },
        ["<leader>k"] = { ":lnext<CR>zz", "location next" },
        ["<leader>j"] = { ":lprev<CR>zz", "location previous" },
        ["<leader>s"] = { "<cmd> w <CR>", "Save file" },
        ["<M-j>"] = { ":cn<CR>zz", "quickfix next" },
        ["<M-k>"] = { ":cp<CR>zz", "quickfix previous" },
        ["<C-u>"] = { "<C-u>zz", "scroll up" },
        ["<C-d>"] = { "<C-d>zz", "scroll down" },
        ["<leader>d"] = { '"_d', "delete into void" },
        ["<C-o>"] = { "<C-o>zz", "jump back (with line centering)" },
        ["<C-i>"] = { "<C-i>zz", "jump foward (with line centering)" },
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
        ["<C-a>"] = {
            function()
                require("harpoon.ui").nav_file(1)
            end,
            "nav file 1",
        },
        ["<C-s>"] = {
            function()
                require("harpoon.ui").nav_file(2)
            end,
            "nav file 2",
        },
        ["<C-f>"] = {
            function()
                require("harpoon.ui").nav_file(3)
            end,
            "nav file 3",
        },
        ["<C-g>"] = {
            function()
                require("harpoon.ui").nav_file(4)
            end,
            "nav file 4",
        },
        ["<C-n>"] = {
            function()
                require("harpoon.ui").nav_next()
            end,
            "navigate next",
        },
        ["<C-p>"] = {
            function()
                require("harpoon.ui").nav_prev()
            end,
            "navigate previous",
        },
    },
}
M.lspconfig = {
    plugin = true,
}

M.nvimtree = {
    plugin = true,
    n = {
        ["<leader>e"] = {
            function()
                local api = require "nvim-tree.api"
                if api.tree.is_visible() then
                    api.tree.close()
                else
                    api.tree.focus()
                end
            end,
            "focus/open nvimtree (closes if open)",
        },
    },
}

-- more keybinds!

return M
