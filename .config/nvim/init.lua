require('config.plugins')
require('config.settings')
require('config.autocmd')
require('config.keybindings')
require('config.telescope')
require('config.dashboard')
require('config.lualine')

require('lspconfig').pyright.setup{}
