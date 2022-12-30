local rt = require("rust-tools")
local lsp_commons = require("lurian.lsp_commons")
rt.setup({
  server = {
      -- Hover actions
      -- vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      -- vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
      on_attach = function(_, bufr)
          lsp_commons.apply_keymaps(bufr)
      end
  },
})
