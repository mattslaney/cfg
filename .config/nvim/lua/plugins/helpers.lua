return {
    -- Which Key - keybinding hints
    {
        "folke/which-key.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons", "nvim-mini/mini.icons" },
        event = "VeryLazy",
        opts = {},
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
    -- Force myself to learn better vim motions
    {
        "m4xshen/hardtime.nvim",
        lazy = false,
        dependencies = { "MunifTanjim/nui.nvim" },
        opts = {},
        keys = {
            { "<leader>h", "<cmd>Hardtime toggle<CR>", desc = "Toggle Hardtime" }
        }
    },
};
