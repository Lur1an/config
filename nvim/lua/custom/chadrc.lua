---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"
local transparent = false
M.ui = {
    theme = "catppuccin",
    theme_toggle = { "catppuccin", "one_light" },
    transparency = transparent,
    nvdash = {
        load_on_startup = false,
    },
    telescope = {
        style = "bordered", -- borderless / bordered
    },
    hl_override = highlights.override,
    hl_add = highlights.add,
    tabufline = {
        enabled = true,
    },
}

M.plugins = "custom.plugins"
local hlgroups = {
    "TblineFill",
    "TbLineBufOn",
    "TbLineBufOff",
    "TbLineBufOnModified",
    "TbBufLineBufOffModified",
    "TbLineBufOnClose",
    "TbLineBufOffClose",
    "TblineTabNewBtn",
    "TbLineTabOn",
    "TbLineTabOff",
    "TbLineTabCloseBtn",
    "TBTabTitle",
    "TbLineThemeToggleBtn",
    "TbLineCloseAllBufsBtn",
    "Normal",
    "NvimTreeNormal",
}
if transparent then
    for _, hlgroup in ipairs(hlgroups) do
        M.ui.hl_override[hlgroup] = { bg = "none" }
    end
end
-- check core.mappings for table structure
M.mappings = require "custom.mappings"

local opt = vim.opt
local opt_local = vim.opt_local

-- vim.api.nvim_create_autocmd({ "BufEnter" }, {
--   callback = function()
--     if vim.bo.ft == "yaml" then
--       opt_local.tabstop = 2
--       opt_local.shiftwidth = 2
--       opt_local.softtabstop = 2
--     else
--       opt_local.tabstop = 4
--       opt_local.shiftwidth = 4
--       opt_local.softtabstop = 4
--     end
--   end,
-- })

opt.incsearch = true
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = true
opt.foldlevelstart = 5
opt.expandtab = true
opt.smartindent = true
opt.relativenumber = true

opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
return M
