-- [[ Mini.nvim ]]
--
-- Various small independent plugins/modules
-- See https://github.com/echasnovski/mini.nvim
return {
    "echasnovski/mini.nvim",
    config = function()
        -- Around/Inside textobjects
        --
        -- Examples:
        --  - va)  - [V]isually select [A]round [)]paren
        --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
        --  - ci'  - [C]hange [I]nside [']quote
        require("mini.ai").setup({ n_lines = 500 })

        -- Add/delete/replace surroundings (brackets, quotes, etc.)
        --
        -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
        -- - sd'   - [S]urround [D]elete [']quotes
        -- - sr)'  - [S]urround [R]eplace [)] [']
        require("mini.surround").setup()

        local statusline = require("mini.statusline")

        statusline.setup({ use_icons = vim.g.have_nerd_font })

        -- Add wordcount to section_location
        ---@diagnostic disable-next-line: duplicate-set-field
        statusline.section_location = function()
            local default = "%2l:%-2v"

            if vim.bo.filetype == "markdown" then
                local wordcount = tostring(vim.fn.wordcount().words)
                return default .. " WC:" .. wordcount
            else
                return default
            end
        end
    end,
}
