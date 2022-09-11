local home = os.getenv('HOME')

local function mapkey(mode, key, command, option)
  vim.api.nvim_set_keymap(mode, key, command, option)
end

--[[ Normal Mode ]]--

-- Exit NeoVim by pressing CTRL+Q
mapkey('n', '<C-q>', '<CMD>q!<CR>', { noremap = true })

-- Exit all
mapkey('n', '<LEADER>q', '<CMD>qa!<CR>', { noremap = true })

-- Save all files by pressing CTRL+S
mapkey('n', '<C-s>', '<CMD>wa<CR>', { noremap = true })

-- Make a new tab
mapkey('n', '<LEADER>n', '<CMD>tabnew<CR>', { noremap = true })

-- Switch to next tab
mapkey('n', '<LEADER>.', '<CMD>tabn<CR>', { noremap = true })

-- Switch to previous tab
mapkey('n', '<LEADER>,', '<CMD>tabp<CR>', { noremap = true })

-- Open NERDTree
mapkey('n', '<LEADER>o', '<CMD>NERDTreeToggle<CR>', { noremap = true })

-- Source the current file
mapkey('n', '<LEADER>s', '<CMD>source<CR>', { noremap = true })

-- New file
mapkey('n', '<C-n>', '<CMD>DashboardNewFile<CR>', { noremap = true })

-- Telescope
mapkey('n', '<LEADER>ff', '<CMD>Telescope find_files<CR>', { noremap = true })
mapkey('n', '<LEADER>fg', '<CMD>Telescope live_grep<CR>', { noremap = true })
mapkey('n', '<LEADER>fb', '<CMD>Telescope buffers<CR>', { noremap = true })
mapkey('n', '<LEADER>fh', '<CMD>Telescope help_tags<CR>', { noremap = true })

-- Find and replace
mapkey('n', '<LEADER>fr', ':%s/', { noremap = true })

--[[ Insert Mode ]]--

-- Pressing TAB will autocomplete
local function t(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local function check_back_space()
  local col = vim.fn.col('.') - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t '<C-q>u'
  elseif check_back_space() then
    return t '<TAB>'
  else
    vim.fn['coc#_select_confirm']()
  end
end

mapkey('i', '<TAB>', 'v:lua.tab_complete()', { expr = true, silent = true, noremap = true })

-- Pressing CTRL+BACKSPACE will remove the word
mapkey('i', '<C-BS>', '<C-w>', { nil })
mapkey('i', '<C-h>', '<C-w>', { nil })

--[[ Visual Mode ]]--

-- Copy
mapkey('v', '<LEADER>c', '"+y', { noremap = true })

-- Paste
mapkey('v', '<LEADER>v', '"+p', { noremap = true })
