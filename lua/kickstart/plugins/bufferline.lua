return {
  'akinsho/bufferline.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',

  config = function()
    local bufferline = require 'bufferline'
    bufferline.setup {
      options = {
        separator_style = 'slope',
        diagnostics = 'nvim_lsp',
        style_preset = {
          bufferline.style_preset.no_italic,
          -- bufferline.style_preset.minimal,
        },
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            highlight = 'Directory',
            separator = true, -- use a "true" to enable the default, or set your own character
          },
        },
      },
    }
    vim.api.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>x', '<cmd>BufferLinePickClose<CR>', { noremap = true, silent = true })
  end,
}
