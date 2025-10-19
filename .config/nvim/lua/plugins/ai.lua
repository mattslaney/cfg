return {
    -- {
    --     "yetone/avante.nvim",
    --     cond = false,
    --     event = "VeryLazy",
    --     version = false, -- Never set this value to "*"! Never!
    --     build = "make",
    --     ---@module 'avante'
    --     ---@type avante.Config
    --     opts = {
    --         provider = "ollama",
    --         providers = {
    --             ollama = {
    --                 endpoint = "http://localhost:11434",
    --                 model = "llama3.2:1b",
    --             },
    --         },
    --     },
    --     dependencies = {
    --         "nvim-lua/plenary.nvim",
    --         "MunifTanjim/nui.nvim",
    --     },
    -- },
    {
        "olimorris/codecompanion.nvim",
        opts = {
            strategies = {
                chat = {
                    adapter = "llama",
                    model = "llama3.2:1b"
                },
                inline = {
                    adapter = "llama"
                },
                cmd = {
                    adapter = "llama"
                }
            },
            adapters = {
                http = {
                    llama = function()
                        return require("codecompanion.adapters").extend("ollama", {
                            schema = {
                                model = {
                                    default = "llama3.2:1b",
                                },
                                num_ctx = {
                                    default = 20000,
                                },
                            },
                        })
                    end,
                },
            },
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    {
        "zbirenbaum/copilot.lua",
        event = "VeryLazy",
        dependencies = { "copilotlsp-nvim/copilot-lsp" }
    }
}
