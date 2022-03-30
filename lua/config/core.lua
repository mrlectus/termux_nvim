-- UI
require('config.ui.bufferline')
require('config.ui.dashboard')
require('config.ui.statusline')
--require('config.ui.startify')

-- Tools
require('config.tools.telescope')
require('config.tools.tree')
require('config.tools.gitsign')
require('config.tools.treesitter')
require('config.tools.todo')
--require('config.tools.menu')

-- Lsp
require('config.lsp')

-- Misc

require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})
require("trouble").setup()


require('colorizer').setup()
require('nvim_comment').setup()

require('nvim-autopairs').setup({
  ignored_next_char = "[%w%.]",
  enable_check_bracket_line = false
})

require('autosave').setup({
  enabled = true,
  execution_message = "Saved at " .. vim.fn.strftime("%H:%M:%S"),
  events = {"InsertLeave", "TextChanged"},
  conditions = {
  clean_command_line_interval = 0,
  debounce_delay = 135
  }
})

require('neoscroll').setup({
  hide_cursor = true,
  cursor_scrolls_alone = true
})

require("indent_blankline").setup {
  indentLine_enabled = 1,
  char = "|",
  filetype_exclude = { "help", "terminal", "dashboard", "packer", "lspinfo", "TelescopePrompt", "TelescopeResults" },
  buftype_exclude = { "terminal" },
  space_char_blankline = " ",
  show_current_context = true,
}

local g = vim.g

g.indent_blankline_enabled = 0
g.move_key_modifier = 'C'
g.cursurline_timeout = 100
