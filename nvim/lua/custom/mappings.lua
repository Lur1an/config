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

M.general = {
  n = {
    ["q"] = { "<C-w>q", "close window" },
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["n"] = { "nzzzv", "find next occurrence" },
    ["N"] = { "Nzzzv", "find previous occurrence" },
    ["<leader>k"] = { ":lnext<CR>zz", "location next" },
    ["<leader>j"] = { ":lprev<CR>zz", "location previous" },
    ["<C-u>"] = { "<C-u>zz", "scroll up" },
    ["<C-d>"] = { "<C-d>zz", "scroll down" },
  },
  v = {
    ["K"] = { ":m'<-2<CR>gv=gv", "move selection up" },
    ["J"] = { ":m'>+1<CR>gv=gv", "move selection down" },
    ["("] = { "c()<C-c>P", "surround with '()'" },
    ["{"] = { "c{}<C-c>P", "surround with '{}'" },
    ["["] = { "c[]<C-c>P", "surround with '[]'" },
    ["'"] = { "c''<C-c>P", "surround with single quotes" },
    ['"'] = { 'c""<C-c>P", "surround with double quotes' },
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
