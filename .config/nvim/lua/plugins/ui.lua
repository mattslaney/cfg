-- Plugins to enhance the Neovim user interface
return {
    -- Adding a nice status bar with lots of info
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            icons_enabled = true,
            theme = 'auto',
            component_separators = { left = '', right = ''},
            section_separators = { left = '', right = ''},
            disabled_filetypes = {
                statusline = {},
                winbar = {},
            },
            ignore_focus = {},
            always_divide_middle = true,
            globalstatus = false,
            refresh = {
                statusline = 1000,
                tabline = 1000,
                winbar = 1000,
            }
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {'filename'},
            lualine_x = {'encoding', 'fileformat', 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {}
    },
    -- A fuzzy finder for easy navigation
    {
        "ibhagwan/fzf-lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
        keys = {
            -- find
            { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "find files" },
            -- search for
            { "<leader>rg", "<cmd>FzfLua grep<cr>", desc = "grep for" },
            { "<leader>sw", "<cmd>FzfLua grep_cword<cr>", desc = "search word under cursor" },
            { "<leader>sf", "<cmd>FzfLua grep_curbuf<cr>", desc = "search in current buffer" },
            { "<leader>sp", "<cmd>FzfLua grep_project<cr>", desc = "search in project" },
        },
    },
    -- 
    {
        "akinsho/bufferline.nvim", 
        version = "*",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    -- lazy.nvim
    {
        "folke/noice.nvim",
        cond = false,
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
            { "nvim-treesitter/nvim-treesitter",
                lazy = false,
                opts = { 
                    ensure_installed = { "vim", "regex", "lua", "bash", "markdown", "markdown_inline" }
                }
            }
        }
    },
}
