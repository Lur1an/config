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

return M
