return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    --require("markdown-preview").setup()
    vim.g.mkdp_filetypes = { "markdown", "neorg" }
    vim.g.mkdp_command_for_global = 1
    vim.g.markdown_preview_darkmode = 1
    vim.keymap.set('n', 'zz', ':MarkdownPreviewToggle<CR>', {})
    --vim.keymap.set('n', 'aa', 'MarkdownPreviewStop<CR>', {})
  end,
  ft = { "markdown", "neorg" },
}
