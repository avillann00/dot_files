return {
  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs") 
    config.setup({
      ensure_installed = {"lua", "c", "python", "java", "javascript"},
      highlight = { enable = true},
      indent = { enable = true},
    })
  end
}


