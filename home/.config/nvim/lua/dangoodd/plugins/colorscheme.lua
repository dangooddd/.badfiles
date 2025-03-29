return {
    -- kanagawa
    {
        "rebelot/kanagawa.nvim",
        priority = 1000, -- load first
        config = function()
            require("kanagawa").setup({
                commentStyle = { italic = false },
                keywordStyle = { italic = false },
                undercurl = true,
                background = {
                    dark = "wave",
                    light = "lotus"
                },
                colors = {
                    theme = {
                        all = {
                            ui = { bg_gutter = "NONE" },
                        },
                        wave = {
                            term = (function()
                                local wave = require("kanagawa.colors").setup({ theme = "wave" })
                                wave.theme.term[10] = wave.palette.peachRed
                                return wave.theme.term
                            end)(),
                        },
                    },
                },
                overrides = function(colors)
                    local theme = colors.theme
                    return {
                        -- General
                        CursorLineNr = { bold = false },
                        ModeMsg = { bold = false },
                        WinSeparator = { fg = theme.ui.bg_p1 },
                        Whitespace = { fg = theme.ui.bg_p1 },
                        ["@variable.builtin"] = { italic = false },

                        -- Menu
                        Pmenu = { fg = theme.ui.fg, bg = theme.ui.bg_p1 },
                        PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
                        PmenuSbar = { bg = theme.ui.bg_m1 },
                        PmenuThumb = { bg = theme.ui.bg_p2 },

                        -- Blink
                        BlinkCmpMenu = { fg = theme.ui.fg, bg = theme.ui.bg },
                        BlinkCmpLabelMatch = { fg = theme.ui.special },
                        BlinkCmpMenuBorder = { link = "BlinkCmpMenu" },
                        BlinkCmpMenuSelection = { fg = "NONE", bg = theme.ui.bg_p2 },
                        BlinkCmpScrollBarGutter = { bg = theme.ui.bg_p1 },
                        BlinkCmpScrollBarThumb = { bg = theme.ui.fg },
                        BlinkCmpDoc = { link = "BlinkCmpMenu" },
                        BlinkCmpDocBorder = { link = "BlinkCmpMenu" },
                        BlinkCmpDocSeparator = { link = "BlinkCmpMenu" },
                        BlinkCmpSignatureHelp = { link = "BlinkCmpMenu" },
                        BlinkCmpSignatureHelpBorder = { link = "BlinkCmpMenu" },

                        -- Indent guides
                        MiniIndentscopeSymbol = { fg = theme.ui.nontext },
                    }
                end
            })
            vim.cmd.colorscheme("kanagawa")
        end,
    },

    -- gruvbox
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            local palette = require("gruvbox").palette

            require("gruvbox").setup({
                bold = false,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    folds = false,
                },
                contrast = "hard",
                transparent_mode = true,
                overrides = {
                    -- builtin
                    SignColumn = { bg = "None" },
                    CursorLineNr = { bg = "None" },
                    Whitespace = { fg = palette.dark0 },
                    EndOfBuffer = { fg = palette.dark0_hard },
                    Visual = { fg = "None", bg = palette.dark1 },

                    -- blink.cmp
                    BlinkCmpMenu = { link = "Normal" },
                    BlinkCmpMenuBorder = { link = "BlinkCmpMenu" },
                    BlinkCmpMenuSelection = { fg = "None", bg = palette.dark1 },
                    BlinkCmpLabelMatch = { fg = palette.bright_green },
                    BlinkCmpScrollBarGutter = { bg = palette.dark2 },
                    BlinkCmpScrollBarThumb = { bg = palette.light1 },

                    -- indent guides
                    MiniIndentscopeSymbol = { fg = palette.dark1 },
                }
            })
            -- vim.cmd.colorscheme("gruvbox")
        end,
    }
}
