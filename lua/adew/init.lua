require('adew.settings');
require('adew.installed-plugins')
require('adew.remaps')
require('adew.treesitter-config')
require('adew.lsp-config')

-- Highlight on yank 
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

--Theme Config
require('onedark').setup {
  style = 'warmer',
  transparent = true
}
