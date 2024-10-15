return {
  -- Add the toggleterm plugin
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      -- optional config settings
      size = 20,
      open_mapping = [[<c-\>]],
      direction = 'float', -- you can use 'vertical', 'horizontal', or 'float'
    }
  end,
}
