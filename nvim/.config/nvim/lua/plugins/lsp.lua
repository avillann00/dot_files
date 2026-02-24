return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "jdtls",
          "biome",
          "kotlin_language_server",
          "texlab",
          "pyright",
          "ruff",
          "pyre",
          "clangd",
          "eslint",
        },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- List of servers you want configured
      local servers = {
        "lua_ls",
        "clangd",
        "jdtls",
        "texlab",
        "pyright",
        "pyre",
        "ruff",
        "eslint",
      }

      for _, server in ipairs(servers) do
        vim.lsp.config(server, {
          capabilities = capabilities,
        })

        vim.lsp.enable(server)
      end
    end,
  },
}
