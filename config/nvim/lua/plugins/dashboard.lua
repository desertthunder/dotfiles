return {
    "nvimdev/dashboard-nvim",
    -- dashboard-nvim shouldn't be lazy-loaded to properly handle stdin
    -- See https://github.com/nvimdev/dashboard-nvim/pull/450
    lazy = false,
    opts = function()
        return {
            theme = "hyper",
            disable_move = true,
            change_to_vcs_root = true,
            hide = {
                statusline = false,
            },
            config = {
                header = {
                    [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗ ]],
                    [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║ ]],
                    [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║ ]],
                    [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ]],
                    [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║ ]],
                    [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ]],
                },
                packages = { enable = true },
                -- stylua: ignore
                shortcut = {
                    { action = function() vim.api.nvim_input("<cmd>enew<cr>") end, desc = " New File", icon = " ", key = "n" },
                    { action = function() require("telescope.builtin").find_files() end, desc = " Find File", icon = " ", key = "f" },
                    { action = function() require("telescope.builtin").oldfiles() end, desc = " Recent Files", icon = " ", key = "r" },
                    { action = function() require('telescope.live_grep').live_grep() end, desc = " Find Text", icon = " ", key = "g" },
                    { action = function() require("lazy").update() end, desc = " Update", icon = " ", key = "u" },
                    { action = function() require("telescope.builtin").help_tags() end, desc = " Help", icon = " ", key = "h" },
                    { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit", icon = " ", key = "q" },
                },
                project = {
                    enable = true,
                    limit = 5,
                    action = function()
                        require("telescope.builtin").file_browser()
                    end,
                },
                mru = { limit = 7, cwd_only = false },
                footer = function()
                    local stats = require("lazy").stats()
                    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                    return {
                        "⚡ Neovim loaded "
                            .. stats.loaded
                            .. "/"
                            .. stats.count
                            .. " plugins in "
                            .. ms
                            .. "ms",
                    }
                end,
            },
        }
    end,
}
