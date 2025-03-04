local M = {}

function M.load(config)
    local config = config or require("onedarkpro.config").config
    local utils = require("onedarkpro.utils")

    local colors = {
        name = "onelight",

        bg = "#fafafa",
        fg = "#6a6a6a",
        red = "#e05661",
        orange = "#ee9025",
        yellow = "#eea825",
        green = "#1da912",
        cyan = "#56b6c2",
        blue = "#118dc3",
        purple = "#9a77cf",
        white = "#fafafa",
        black = "#6a6a6a",
        gray = "#bebebe",
        highlight = "#e2be7d",
        none = "NONE",
    }

    -- Allow colors to be overriden by the users config
    utils.color_overrides(colors, config)

    -- Additional colors
    colors.cursorline = colors.cursorline or utils.darken(colors.bg, 0.97)
    colors.color_column = colors.color_column or utils.darken(colors.bg, 0.97)
    colors.comment = colors.comment or utils.darken(colors.gray, 0.80)
    colors.indentline = colors.indentline or utils.darken(colors.bg, 0.93)
    colors.menu = colors.menu or utils.darken(colors.bg, 0.95)
    colors.menu_scroll = colors.menu_scroll or utils.darken(colors.bg, 0.90)
    colors.menu_scroll_thumb = colors.menu_scroll_thumb or utils.lighten(colors.blue, 0.80)
    colors.selection = colors.selection or utils.darken(colors.bg, 0.90)

    -- Git diff
    colors.diff_add = colors.diff_add or "#cae3e8"
    colors.diff_delete = colors.diff_delete or "#f5c6c6"
    colors.diff_text = colors.diff_text or "#a6d0d8"

    -- Lualine colors
    colors.bg_statusline = colors.bg_statusline or utils.darken(colors.bg, 0.95)
    colors.fg_gutter = colors.fg_gutter or utils.darken(colors.bg, 0.70)
    colors.fg_sidebar = colors.fg_sidebar or colors.fg

    -- Virtual text
    colors.virtual_text_error = colors.virtual_text_error or utils.lighten(colors.red, 0.6)
    colors.virtual_text_warning = colors.virtual_text_warning or utils.lighten(colors.yellow, 0.6)
    colors.virtual_text_information = colors.virtual_text_information or utils.lighten(colors.blue, 0.6)
    colors.virtual_text_hint = colors.virtual_text_hint or utils.lighten(colors.cyan, 0.6)

    return colors
end

return M
