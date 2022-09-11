local dashboard = require('dashboard')
local home      = os.getenv('HOME')

--[[ DASHBOARD HEADER ]]--

dashboard.preview_command     = 'cat | lolcat -F 0.3'
dashboard.preview_file_path   = home .. '/.config/nvim/static/neovim.cat'
dashboard.preview_file_height = 10
dashboard.preview_file_width  = 54

--[[ DASHBOARD CENTER ]]--

dashboard.custom_center = {
  { icon = '  ',
    desc = 'New file                          ',
    shortcut = 'CTRL n',
    action ='DashboardNewFile' },
  { icon = '  ',
    desc = 'Open file                         ',
    shortcut = 'SPC f f',
    action = 'Telescope find_files find_command=rg,--hidden,--files' },
  { icon = '  ',
    desc = 'Find word                         ',
    shortcut = 'SPC f g',
    action = 'Telescope live_grep' }
}

--[[ DASHBOARD FOOTER ]]--

dashboard.custom_footer = { 'wheezy outta here.' }
