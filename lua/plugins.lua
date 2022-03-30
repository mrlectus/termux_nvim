require('packer').init({
  compile_path = '~/.local/share/nvim/plugin/packer_compiled.lua',
  display = {
    non_interactive = false,
    open_fn  = require('packer.util').float,
    show_all_info = false,
    prompt_border = 'single',
  },

})
return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'

  --color
  use 'folke/tokyonight.nvim'
  use 'marko-cerovac/material.nvim'
  use 'sainnhe/gruvbox-material'
  use 'Shatur/neovim-ayu'

  --ui
  use 'glepnir/dashboard-nvim'
  use 'akinsho/bufferline.nvim'
  use 'glepnir/galaxyline.nvim'

  --tools
  use 'kyazdani42/nvim-tree.lua'
  use 'akinsho/toggleterm.nvim'
  use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'},{'kyazdani42/nvim-web-devicons'}} }

  --syntax
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'plasticboy/vim-markdown', opt = true, ft = {'markdown'} }

  --git
  use 'lewis6991/gitsigns.nvim'

  --workspace
  use 'Pocco81/AutoSave.nvim'
  use 'terrortylor/nvim-comment'
  use 'folke/todo-comments.nvim'

  --edit
  use 'matze/vim-move'
  use 'mg979/vim-visual-multi'

  --enhance/optional
  use 'lukas-reineke/indent-blankline.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/lsp-colors.nvim'
  use 'p00f/nvim-ts-rainbow'
  use 'karb94/neoscroll.nvim'

  --auto
  use 'windwp/nvim-autopairs'
  use { 'windwp/nvim-ts-autotag', ft = {'html'} }
  use { 'AndrewRadev/tagalong.vim', ft = {'html'} }

  --lsp
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'
  use 'folke/trouble.nvim'
  use "jose-elias-alvarez/null-ls.nvim"
  use "jose-elias-alvarez/nvim-lsp-ts-utils"

  --use 'williamboman/nvim-lsp-installer'

  --snip
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'

  --completion
  use { 'hrsh7th/nvim-cmp',
        requires = {
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-path'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-vsnip'},
        }
      }

end
)

-- Suggested Plugins
-- lspsaga.nvim
-- trouble.nvim
-- lsp-colors.nvim
-- formatter.nvim

-- rest.nvim
-- nvim-jqx

-- auto-session
-- sidebar.nvim
-- nvim-gps
-- TrueZen
-- twilight.nvim
-- nvim-spectre

-- octo.nvim

-- sneak
-- mathup
-- register
-- vCoolor
