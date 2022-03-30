local vim = vim.g
local call = vim.fn

call['quickmenu#reset']()

g.quickmenu_padding_left = 3
g.quickmenu_padding_right = 3
g.quickmenu_ft_blacklist = {}
g.quickmenu_options = 'HL'

call['quickmenu#header']('Menu')

call['quickmenu#append']('Files', 'Telescope find_files', 'Shows Files and Directories')
call['quickmenu#append']('Tabs', 'Telescope buffers', 'List Buffers')

call['quickmenu#append']('# Interface', '')
call['quickmenu#append']('Indentline', 'IndentBlanklineToggle', 'Toggle Indentline')
call['quickmenu#append']('Themes', 'Telescope colorscheme', 'Change ColorSchemes')
call['quickmenu#append']('Colorize', 'ColorizerToggle', 'Toggle Color Previews')
call['quickmenu#append']('Numbers', 'set nonu!', 'Toggle Line Numbers')
call['quickmenu#append']('R-Numbers', 'set relativenumber!', 'Toggle Line Numbers')
call['quickmenu#append']('Spell Check', 'set spell!', 'Toggle Spell Check')

call['quickmenu#append']('# Git', '')
call['quickmenu#append']('Commits', 'Telescope git_commits', 'Shows Commits')
