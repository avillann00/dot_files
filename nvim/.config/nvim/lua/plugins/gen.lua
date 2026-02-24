return {
  {
    "David-Kunz/gen.nvim",
    config = function()
      require("gen").setup({
        model = "phi3:mini",
        host = "localhost",
        port = "11434",
        display_mode = "float",
      })

      vim.keymap.set("n", "fa", ":Gen Chat<CR>", { desc = "AI Chat" })
    end,
  },
}
