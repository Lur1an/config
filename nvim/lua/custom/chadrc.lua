---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "monekai",
  theme_toggle = { "monekai", "one_light" },
  transparency = true,
  nvdash = {
    load_on_startup = true,
  },

  hl_override = highlights.override,
  hl_add = highlights.add,
  tabufline = {
    enabled = false,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

local opt = vim.opt

opt.incsearch = true
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.relativenumber = true
opt.signcolumn = "no"


return M
