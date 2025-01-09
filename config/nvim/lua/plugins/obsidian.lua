-- obsidian.nvim configuration
--
-- See https://github.com/epwalsh/obsidian.nvim?tab=readme-ov-file#configuration-options
-- for default config options.
local M = {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        workspaces = {
            {
                name = "tasks",
                path = "~/Documents/management",
            },
            {
                name = "notes",
                path = "~/Documents/pkms",
            },
            {
                name = "writing",
                path = "~/Documents/writing",
            },
        },
        mappings = {
            -- Go to file
            ["gf"] = {
                action = function()
                    return require("obsidian").util.gf_passthrough()
                end,
                opts = { noremap = false, expr = true, buffer = true },
            },
            -- Toggle check-boxes.
            ["<leader>ch"] = {
                action = function()
                    return require("obsidian").util.toggle_checkbox()
                end,
                opts = { buffer = true },
            },
            -- Contextual smart action: either follow link or toggle checkbox.
            ["<cr>"] = {
                action = function()
                    return require("obsidian").util.smart_action()
                end,
                opts = { buffer = true, expr = true },
            },
        },
    },
}

return M
