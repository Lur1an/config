---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["n"] = { "nzzzv", "find next occurrence" },
    ["N"] = { "Nzzzv", "find previous occurrence" },
    ["<leader>k"] = { ":lnext<CR>zz", "quickfix next" },
    ["<leader>j"] = { ":lprev<CR>zz", "quickfix previous" },
    ["<C-u>"] = { "<C-u>zz", "scroll up" },
    ["<C-d>"] = { "<C-d>zz", "scroll down" },
  },
  v = {
    ["K"] = { ":m'<-2<CR>gv=gv", "move selection up" },
  },
}

M.harpoon = {
  plugin = true,
  n = {
    ["<leader>a"] = { require("harpoon.mark").add_file },
  },
}

M.telescope = {}
-- more keybinds!

return M
