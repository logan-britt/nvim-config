local status, nvim_tree = pcall(require, 'nvim-tree')
if not status then 
  print 'nvim-tree not found'
  return 
end

nvim_tree.setup {
  auto_close = true,
  open_on_tab = true,
  update_cwd = true,

  update_focused_file = {
    enabled = true,
    update_cwd = true,
  },

  view = {
    width = 25,
    auto_resize = true
  }
}
