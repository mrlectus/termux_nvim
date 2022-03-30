-- map helper
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local cmd = vim.cmd
local s = {silent = true}


------------------------
-- Mapping Goes Here --
------------------------

map('n', '<Space>', '<Nop>')
vim.g.mapleader = ' '


map('n', '<leader>s', ':Dashboard<cr>', s)
map('n', '<leader>n', ':tabnew<cr>', s)
map('n', '<leader>t', ':ToggleTerm<cr>', s)


map('n', '<leader>f', ':Telescope find_files<cr>', s)
map('n', '<leader>l', ':IndentBlanklineToggle<cr>', s)
map('', '<space>c', ':quickmenu#toggle(0)<cr>', s)
map('n', '<C-right>', ':BufferLineCycleNext<cr>', s)
map('n', '<C-left>', ':BufferLineCyclePrev<cr>', s)


map('n', '<C-c>', ':NvimTreeToggle<cr>', s)
map('n', '<leader>nf', ':NvimTreeFindFile<cr>', s)


map('n', '<leader>n', ':DashboardNewFile<cr>', s)
map('n', '<leader>i', ':e ~/.config/nvim/lua/options.lua<cr>', s)


-- Save, Exit
map('n', '<C-s>', ':w<cr>')
map('n', '<C-q>', ':wq<cr>')
map('n', 'qq', ':q!<cr>')

map('n', '<C-z>', '<esc>ua<esc>')
map('n', '<z>', '<esc>ua<esc>')

-- Map ; to :
map('n', ';', ':')
map('n', ';', ':')

-- Tab cycles Buffer
map('n', '<tab>', ':bnext<cr>', s)
map('v', '<s-tab>', ':bprevious<cr>', s)

-- Run Packer Sync
map('n', '<leader>cs', ':PackerSync<cr>', s)

-- Don't Insert in newline
map('n', 'o', 'o<esc>', s)
map('n', 'O', 'O<esc>', s)

-- Prevent x from overriding Paste
map('', 'x', '"_x', s)
map('', 'X', '"_x', s)
map('', '<del>', '"_x', s)

-- Undo BreakPoints
--map('i', ',', ',<c-q>u')
--map('i', '.', '.<c-q>u')
--map('i', '!', '!<c-q>u')
--map('i', '?', '?<c-q>u')

-- Duplicate Line up/down
map('n', '<C-m-j>', '"dY"dp')
map('n', '<C-m-k>', '"dY"dP')



------------------------
--   Some Defaults   --
------------------------

local place = vim.api.nvim_set_keymap
local sn = {noremap = false, silent = true}

-- Sellect all text
place('n', '<C-x>', ':%y<cr>', sn)

-- disable macros
place('', 'q', '<Nop>', sn)

-- smoothie
place('', 'ScrollWheelUp', '<C-u>', sn)
place('', 'ScrollWheelDown', '<C-d>', sn)

-- don't go below the line
place('', '<PageUp>', '1000<C-u>', sn)
place('', '<PageDown>', '1000<C-d>', sn)
place('i', '<PageUp>', '<C-o>1000<C-u>', sn)
place('i', '<PageDown>', '<C-o>1000<C-d>', sn)

--__Unused__--

-- Window Navigation
--place('n', '<up>', '<C-w><up>', sn)
--place('n', '<down>', '<C-w><down>', sn)
--place('n', '<left>', '<C-w><left>', sn)
--place('n', '<right>', '<C-w><right>', sn)

-- Better Complete
--" Navigate the complete menu items like CTRL+n / CTRL+p would.
--inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
--inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"
--" Select the complete menu item like CTRL+y would.
--inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
--inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>
--" Cancel the complete menu item like CTRL+e would.
--inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"
