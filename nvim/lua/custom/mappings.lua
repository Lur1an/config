---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    ["<leader>x"] = "",
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
    ["<C-S-p"] = { ":", "enter command mode", opts = { nowait = true } },
    ["n"] = { "nzzzv", "find next occurrence" },
    ["N"] = { "Nzzzv", "find previous occurrence" },
    ["<leader>k"] = { ":lnext<CR>zz", "location next" },
    ["<leader>j"] = { ":lprev<CR>zz", "location previous" },
    ["<C-u>"] = { "<C-u>zz", "scroll up" },
    ["<C-d>"] = { "<C-d>zz", "scroll down" },
  },
  v = {
    ["K"] = { ":m'<-2<CR>gv=gv", "move selection up" },
  },
}

M.harpoon = {
  n = {
    ["<C-e>"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "harpoon toggle quick menu",
    },
  },
}

-- more keybinds!

return M
