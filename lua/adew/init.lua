require('adew.settings');
require('adew.installed-plugins')
require('adew.remaps')
require('adew.treesitter-config')
require('adew.lsp-config')
require('adew.lualine-config')
require('adew.telescope-config')

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

require("catppuccin").setup({
  transparent_background = true, -- disables setting the background color.
  term_colors = true,
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    notify = false,
    mini = {
      enabled = true,
      indentscope_color = "",
    },
  },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
