require'nvim-treesitter.configs'.setup {

  ensure_installed = {
    'lua',
    'vim',
    'bash'
  },

  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },

  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },

  autotag = {
    enable = true,
  }

}
