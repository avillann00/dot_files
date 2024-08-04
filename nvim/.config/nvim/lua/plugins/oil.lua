return{
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { "echasnovski/mini.icons" },
--dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  config = function()
    require("oil").setup()
    vim.keymap.set('n', 'oo', ':Oil<CR>', {})
    vim.keymap.set('n', 'om', ':move ', {})
    vim.keymap.set('n', 'ond', ':OilCreateDirectory ', {})
    vim.keymap.set('n', 'onf', ':OilCreateFile ', {})
  end
}
