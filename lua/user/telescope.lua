local status, telescope = pcall(require, 'telescope')
if not status then 
  print 'Telescope could not be found.'
  return
end

telescope.setup {
  defaults = {

  },

  mappings = {
  
  },

  pickers = {

  },

  extensions = {

  }
}
