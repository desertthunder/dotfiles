-- Theme Highlight Groups
--
-- Takes a table with base_16 & base_30 colors as input
-- Returns a function that sets the highlight groups.
local M = function(T)
    local highlight = function(group, opts)
        vim.api.nvim_set_hl(0, group, opts)
    end

    -- General Editor Highlights
    highlight("Normal", { fg = T.base_16.base05, bg = T.base_16.base00 })
    highlight("LineNr", { fg = T.base_30.grey_fg, bg = T.base_16.base00 })
    highlight("CursorLine", { bg = T.base_30.one_bg })
    highlight("CursorLineNr", { fg = T.base_30.yellow, bg = T.base_30.one_bg })
    highlight("Visual", { bg = T.base_30.light_grey })
    highlight(
        "StatusLine",
        { fg = T.base_16.base04, bg = T.base_30.statusline_bg }
    )
    highlight("StatusLineNC", { fg = T.base_16.base04, bg = T.base_30.one_bg })
    highlight("VertSplit", { fg = T.base_30.line })
    highlight("Pmenu", { fg = T.base_16.base05, bg = T.base_30.pmenu_bg })

    -- Syntax Highlights
    highlight("Function", { fg = T.base_30.vibrant_green })
    highlight("Identifier", { fg = T.base_30.white })
    highlight("Keyword", { fg = T.base_30.pink, bold = true })
    highlight("String", { fg = T.base_30.orange })
    highlight("Comment", { fg = T.base_30.grey_fg, italic = true })
    highlight("Constant", { fg = T.base_30.violet })
    highlight("Type", { fg = T.base_30.blue })
    highlight("Error", { fg = T.base_30.red, bold = true })

    -- Git Highlights
    highlight("DiffAdd", { fg = T.base_30.darkgreen })
    highlight("DiffDelete", { fg = T.base_30.brownred })

    -- Treesitter Highlights
    highlight("@function.builtin", { fg = T.base_30.cyan })
    highlight("@number", { fg = T.base_30.purple })
    highlight("@module", { fg = T.base_30.white })
    highlight("@function.call", { fg = T.base_30.vibrant_green })
    highlight("@keyword.repeat", { fg = T.base_30.green })

    -- LSP Highlights
    highlight("LspDiagnosticsDefaultError", { fg = T.base_30.red })
    highlight("LspDiagnosticsDefaultWarning", { fg = T.base_30.yellow })
    highlight("LspDiagnosticsDefaultInformation", { fg = T.base_30.blue })
    highlight("LspDiagnosticsDefaultHint", { fg = T.base_30.purple })

    -- Set nvimcmp highlights
    highlight("CmpDocumentation", { bg = T.base_30.black2 })
    highlight("CmpDocumentationBorder", { fg = T.base_30.black2, bg = T.base_30.black2 })
    highlight("CmpBorder", { fg = T.base_30.darker_black, bg = T.base_30.darker_black })
    highlight("CmpItemMenu", { bg = T.base_30.darker_black })

    highlight("CmpItemAbbr", { fg = T.base_30.white })
    highlight("CmpItemAbbrMatch", { fg = T.base_30.vibrant_green, bold = true })


    -- Set nvimcmp item kinds
    highlight("CmpItemKindConstant", { fg = T.base_16.base09 })
    highlight("CmpItemKindMethod", { fg = T.base_16.base0D })
    highlight("CmpItemKindIdentifier",  { fg = T.base_16.base08 })
    highlight("CmpItemKindField",  { fg = T.base_16.base08 })
    highlight("CmpItemKindVariable",  { fg = T.base_16.base0E })
    highlight("CmpItemKindSnippet",  { fg = T.base_30.red })
    highlight("CmpItemKindText",  { fg = T.base_16.base0B })
    highlight("CmpItemKindStructure",  { fg = T.base_16.base0E })
    highlight("CmpItemKindType",  { fg = T.base_16.base0A })
    highlight("CmpItemKindKeyword",  { fg = T.base_16.base07 })
    highlight("CmpItemKindMethod",  { fg = T.base_16.base0D })
    highlight("CmpItemKindConstructor",  { fg = T.base_30.blue })
    highlight("CmpItemKindFolder",  { fg = T.base_16.base07 })
    highlight("CmpItemKindModule",  { fg = T.base_16.base0A })
    highlight("CmpItemKindProperty",  { fg = T.base_16.base08 })
    highlight("CmpItemKindEnum",  { fg = T.base_30.blue })
    highlight("CmpItemKindUnit",  { fg = T.base_16.base0E })
    highlight("CmpItemKindClass",  { fg = T.base_30.teal })
    highlight("CmpItemKindFile",  { fg = T.base_16.base07 })
    highlight("CmpItemKindInterface",  { fg = T.base_30.green })
    highlight("CmpItemKindColor",  { fg = T.base_30.white })
    highlight("CmpItemKindReference",  { fg = T.base_16.base05 })
    highlight("CmpItemKindEnumMember",  { fg = T.base_30.purple })
    highlight("CmpItemKindStruct",  { fg = T.base_16.base0E })
    highlight("CmpItemKindValue",  { fg = T.base_30.cyan })
    highlight("CmpItemKindEvent",  { fg = T.base_30.yellow })
    highlight("CmpItemKindOperator",  { fg = T.base_16.base05 })
    highlight("CmpItemKindTypeParameter",  { fg = T.base_16.base08 })
    highlight("CmpItemKindCopilot",  { fg = T.base_30.green })
    highlight("CmpItemKindCodeium",  { fg = T.base_30.vibrant_green })
    highlight("CmpItemKindTabNine",  { fg = T.base_30.baby_pink })
    highlight("CmpItemKindSuperMaven",  { fg = T.base_30.yellow })


    highlight("MiniStatuslineModeNormal", { fg = T.base_30.green, bg = T.base_30.one_bg })
    highlight("MiniStatuslineModeInsert", { fg = T.base_30.pink, bg = T.base_30.one_bg })
    highlight("MiniStatuslineModeVisual", { fg = T.base_30.purple, bg = T.base_30.one_bg })
    highlight("MiniStatuslineModeReplace", { fg = T.base_30.red, bg = T.base_30.one_bg })
    highlight("MiniStatuslineModeCommand", { fg = T.base_30.cyan, bg = T.base_30.one_bg })
end

return M
