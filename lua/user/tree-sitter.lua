local status, tree_sitter = pcall( require, 'nvim-treesitter.configs' )
if not status then
  print 'Tree sitter not found!'

  return
end

-- turn on the very basics for highlighting and indenting
tree_sitter.setup {
  ensure_installed = 'maintained',

  highlight = {
    enable = true
  },

  indent = {
    enable = true
  }
}

-- turn on code folding for neovim
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'


-- set the compiler to clang for windows
if not vim.fn.has('macunix') then
  require 'nvim-treesitter.install'.compilers = { "clang" }
end
