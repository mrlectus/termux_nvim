vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

local built_ins = {
  'netrw',
  'netrwPlugins',
  'netrwSettings',
  'netrwFileHandlers',
  'gzip',
  'zipPlugin',
  'tar',
  'tarPlugin',
  'getscript',
  'getscriptPlugin',
  'vimball',
  'vimballPlugin',
  '2html_plugin',
  'logipat',
  'rrhelper',
  'spellfile_plugin',
  'matchit',
}

for _, plugin in pairs(built_ins) do
  vim.g['loaded_' .. plugin] = 1
end
