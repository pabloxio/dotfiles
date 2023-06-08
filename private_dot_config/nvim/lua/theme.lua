-- vim: filetype=lua

vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha
vim.cmd[[colorscheme catppuccin]]

local catppuccin = require("catppuccin")
catppuccin.setup({
    transparent_background = false,
    term_colors = false,
    styles = {
        comments = "italic",
        conditionals = "italic",
        loops = "NONE",
        functions = "NONE",
        keywords = "NONE",
        strings = "NONE",
        variables = "NONE",
        numbers = "NONE",
        booleans = "NONE",
        properties = "NONE",
        types = "NONE",
        operators = "NONE",
    },
    integrations = {
        treesitter = false,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = "italic",
                hints = "italic",
                warnings = "italic",
                information = "italic",
            },
            underlines = {
                errors = "underline",
                hints = "underline",
                warnings = "underline",
                information = "underline",
            },
        },
        coc_nvim = false,
        lsp_trouble = false,
        cmp = true,
        lsp_saga = false,
        gitgutter = true,
        gitsigns = false,
        telescope = true,
        nvimtree = {
            enabled = true,
            show_root = false,
            transparent_panel = false,
        },
        neotree = {
            enabled = false,
            show_root = false,
            transparent_panel = false,
        },
        which_key = false,
        indent_blankline = {
            enabled = true,
            colored_indent_levels = false,
        },
        dashboard = false,
        neogit = false,
        vim_sneak = false,
        fern = false,
        barbar = false,
        bufferline = true,
        markdown = false,
        lightspeed = false,
        ts_rainbow = false,
        hop = false,
        notify = false,
        telekasten = false,
        symbols_outline = false,
    }
})
