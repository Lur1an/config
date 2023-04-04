vim.cmd.colorscheme("echidna")
function ColorMyIDE(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyIDE()

vim.cmd [[
augroup TransparentBackground
    autocmd!
        autocmd ColorScheme * :lua ColorMyIDE()
        augroup END
]]
