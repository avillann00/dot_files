return {
  {
    "Exafunction/codeium.nvim",
    event = "BufEnter",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        enable_chat = true,
      })

      -- Keymaps
      vim.keymap.set("i", "<C-i>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, silent = true })

      vim.keymap.set("i", "<C-j>", function()
        return vim.fn
      end, { expr = true, silent = true })

      vim.keymap.set("i", "<C-k>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { expr = true, silent = true })

      vim.keymap.set("n", "ga", "<cmd>Codeium Chat<CR>", { desc = "Codeium Chat" })
    end,
  },
}
