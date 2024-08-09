return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "jdtls", "biome", "kotlin_language_server", "texlab", "pyright", "ruff", "pyre", "clangd"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.clangd.setup({
        capabilities = capabilities
      })
      lspconfig.jdtls.setup({
        capabilities = capabilities
      })
      lspconfig.texlab.setup ({
        capabilities = capabilities
      })
      lspconfig.pyright.setup ({
        capabilities = capabilities,
      })
      lspconfig.pyre.setup ({
        capabilities = capabilities
      })
      lspconfig.ruff.setup ({
        capabilities = capabilities
      })
    end
  }
}
