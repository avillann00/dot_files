return{
  'plasticboy/vim-markdown',
  branch = 'master',
  require = {'godlygeek/tabular'},
  config = function()
    vim.g.vim_markdown_folding_disabled = 1
    vim.g.vim_markdown_math = 1
    vim.g.vim_markdown_new_list_item_indent = 2
  end
}
