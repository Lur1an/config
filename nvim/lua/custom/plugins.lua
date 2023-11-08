local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
    {
        "windwp/nvim-ts-autotag",
        event = "InsertEnter",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-ts-autotag").setup()
            require("nvim-treesitter.configs").setup {
                autotag = {
                    enable = true,
                },
            }
        end,
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
    },

    {
        "andweeb/presence.nvim",
        lazy = false,
        opts = {
            auto_update = true,
            neovim_image_text = "How do I exit this thing!? Help.",
            main_image = "file",
            blacklist = { "e1-rust" },
            git_commit_text = "commiting war crimes",
        },
    },
    {
        "simrat39/rust-tools.nvim",
        ft = "rust",
        dependencies = "neovim/nvim-lspconfig",
        config = function()
            require "custom.configs.rust-tools"
        end,
    },
    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function()
            vim.g.rustfmt_autosave = 1
        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        opts = require "custom.configs.dap-ui",
    },
    {
        "mfussenegger/nvim-dap-python",
        config = function()
            require("dap-python").setup(os.getenv "VIRTUAL_ENV" .. "/bin/python")
        end,
    },
    {
        "mfussenegger/nvim-dap",
        config = function()
            require "custom.configs.dap"
        end,
    },
    {
        "zbirenbaum/copilot.lua",
        event = "InsertEnter",
        lazy = false,
        cmd = "Copilot",
        opts = require "custom/configs/copilot",
    },
    {
        "https://github.com/doki-theme/doki-theme-vim.git",
    },
    {
        "theprimeagen/harpoon",
        lazy = false,
    },

    {
        "neovim/nvim-lspconfig",
        dependencies = {
            -- format & linting
            {
                "jose-elias-alvarez/null-ls.nvim",
                config = function()
                    require "custom.configs.null-ls"
                end,
            },
        },
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end, -- Override to setup mason-lspconfig
    },

    {
        "williamboman/mason.nvim",
        opts = overrides.mason,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = overrides.treesitter,
    },

    {
        "nvim-tree/nvim-tree.lua",
        opts = overrides.nvimtree,
    },

    -- Install a plugin
    {
        "max397574/better-escape.nvim",
        event = "InsertEnter",
        config = function()
            require("better_escape").setup()
        end,
    },
    {
        "tpope/vim-fugitive",
        cmd = "Git",
    },
}

return plugins
