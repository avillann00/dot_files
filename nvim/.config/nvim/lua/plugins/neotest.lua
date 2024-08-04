return{
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-neotest/neotest-python"
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-python")
      }
    })
    vim.api.nvim_set_keymap('n', '<Space>tn', ':lua require("neotest").run.run()<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<Space>tf', ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<Space>tl', ':lua require("neotest").run.run_last()<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<Space>ts', ':lua require("neotest").summary.toggle()<CR>', { noremap = true, silent = true })

  end
}
