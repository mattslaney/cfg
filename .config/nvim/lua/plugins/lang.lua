return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        branch = 'main',
        build = ':TSUpdate',
        -- requirements:
        -- nvim v0.11.0+
        -- * tar curl
        -- * tree-sitter-cli 0.25.0+
        -- * node 23.0.0+
        opts = { 
            ensure_installed = { "vim", "regex", "lua", "bash", "markdown", "markdown_inline" }
        }
    },
    -- {
    --     "neovim/nvim-lspconfig",
    --     lazy = false,
        -- dependencies = { 
        --     { "ms-jpq/coq_nvim", branch = "coq" },
        --     { "ms-jpq/coq.artifacts", branch = "artifacts" },
        -- },
    --     init = function()
    --         vim.g.coq_settings = {
    --             auto_start = "shut-up",
    --         }
    --     end,
    -- },
    -- {
    --     "mason-org/mason.nvim",
    --     cond = false,
    --     opts = {}
    -- },
    {
        "mason-org/mason-lspconfig.nvim",
        cond = true,
        dependencies = {
            { "mason-org/mason.nvim", 
            cond = true,
            opts = {} },
            "neovim/nvim-lspconfig",
        },
        opts = {
            ensure_installed = {
                "lua_ls"
            },
        },
    },
}
