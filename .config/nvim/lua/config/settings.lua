local g   = vim.g
local set = vim.opt

g.mapleader = ' ' -- Leader key

set.number 	      = true	      -- Show line numbers
set.autoindent 	  = true          -- Automatically indent new lines
set.tabstop	      = 4		      -- Number of spaces per tab
set.mouse	      = 'a'	          -- Enable mouse
set.showmatch	  = true          -- Show matching words
set.ignorecase 	  = true	      -- Case insensitive
set.hlsearch	  = true	      -- Highlight searched words
set.expandtab	  = true	      -- Convert tabs to whitespace
set.clipboard  	  = 'unnamedplus' -- Use system clipboard
set.cursorline    = true	      -- Highlight current line
set.termguicolors = true	      -- Enable true colors support

g.python_highlight_space_errors  = 0
g.python_highlight_indent_errors = 0

vim.cmd('set noswapfile')            -- Do not create any '.swp' files
vim.cmd('filetype plugin indent on') -- Enable filetype detection plugin and indent at once
vim.cmd('syntax on')                 -- Enable syntax highlighting

vim.cmd('let ayucolor=\'dark\'')     -- Change ayu theme to dark
vim.cmd('colorscheme ayu')           -- Change color scheme to ayu
