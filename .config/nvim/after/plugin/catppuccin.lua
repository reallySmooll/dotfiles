local catppuccin = require('catppuccin')

catppuccin.setup({
    flavour = 'mocha',
    styles = {
        comments = { 'italic' }
    },
    integrations = {
        cmp = true,
        mason = true,
        treesitter = true,
        lsp_trouble = true,
        native_lsp = {
            enabled = true,
            underlines = {
                errors = { 'underline' },
                hints = { 'underline' },
                warnings = { 'underline' },
                information = { 'underline' }
            }
        }
    },
    color_overrides = {
        mocha = {
            base = '#11111B',
            mantle = '#11111B',
            crust = '#11111B'
        }
    }
})

vim.cmd [[CatppuccinCompile]]

vim.cmd.colorscheme('catppuccin')
