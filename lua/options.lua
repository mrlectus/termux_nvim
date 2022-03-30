local cmd = vim.cmd
local opt = vim.opt

cmd[[colorscheme ayu-mirage]]

opt.termguicolors = true
opt.background  = 'dark'

opt.syntax  = 'on'
opt.number  = true
opt.cursorline  = true
opt.ruler  = true
opt.wrap = false
opt.mouse  = 'nv'
opt.scrolloff  = 4
opt.sidescrolloff  = 6
opt.laststatus = 2
opt.hidden = true
opt.lazyredraw  = true
opt.updatetime = 250
opt.ttyfast = true

opt.showmode  = false
opt.showcmd  = false
opt.wildmenu  = true
opt.cmdheight  = 1
opt.timeoutlen = 200
opt.shortmess = opt.shortmess + 'c'
opt.completeopt = {'menuone', 'longest'}
opt.pumheight = 6
opt.pumblend = 2
opt.winblend = 2

opt.clipboard = {'unnamed', 'unnamedplus'}

opt.showmatch = true
opt.hlsearch = false
opt.smartcase = true
opt.ignorecase = true

opt.smartindent = true
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 0

opt.foldenable = false

opt.list = false
opt.listchars = {tab = '> ', trail = '°'}

opt.formatoptions = opt.formatoptions - 'cro'

opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.undofile = true

require('utils.autocmds')
