local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/lua/config/plugins')

Plug 'nvim-lualine/lualine.nvim'					-- Status bar
Plug 'romgrk/barbar.nvim'                           -- Better looking buffers (tabs)
Plug 'ryanoasis/vim-devicons'						-- Icon pack
Plug 'kyazdani42/nvim-web-devicons'                 -- More icons
Plug 'preservim/nerdtree'							-- Tree explorer
Plug 'sheerun/vim-polyglot'							-- Better syntax highlighting
Plug 'neovim/nvim-lspconfig'						-- Neovim's LSP config
Plug 'ayu-theme/ayu-vim'							-- Ayu colorscheme
Plug 'universal-ctags/ctags'						-- Ctags
Plug 'luochen1990/rainbow'							-- Bracket colorizer from VSCode
Plug 'vim-syntastic/syntastic'						-- Syntax checking
Plug 'glepnir/dashboard-nvim'					    -- Homepage
Plug 'nvim-lua/plenary.nvim'                        -- (required by telescope.nvim)

Plug('neoclide/coc.nvim', { branch = 'release' })	                          -- Auto completion
Plug('nvim-telescope/telescope-fzf-native.nvim', { run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }) -- Fuzzy finder (required by telescope.nvim
Plug('nvim-treesitter/nvim-treesitter', { run = 'TSUpdate' })                 -- Treesitter (required by telescope.nvim)
Plug('nvim-telescope/telescope.nvim', { branch = '0.1.x' })                   -- Telescope (file finder)

vim.call('plug#end')
