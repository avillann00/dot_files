return {
  'romgrk/barbar.nvim',
  config = function()
    vim.keymap.set('n', 'bb', '<Cmd>BufferPrevious<CR>', {})
    vim.keymap.set('n', 'ff', '<Cmd>BufferNext<CR>', {})
    vim.keymap.set('n', 'cv', '<:BufferClose<CR>', {})


    require('lazy').setup {
      { 'romgrk/barbar.nvim',
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {},
        version = '^1.0.0',
      },
    }
  end
}
