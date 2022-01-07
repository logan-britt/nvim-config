local lsp_installer_status, lsp_installer = pcall( require, 'nvim-lsp-installer' )
if not lsp_installer_status then
  print 'nvim-lsp-installer not found!'
  return
end

local rust_tools_status, rust_tools = pcall( require, 'rust-tools' )
if not rust_tools_status then
  print 'rust-tools not found!'
  return
end

local lsp_config_status, lsp_config = pcall( require, 'lspconfig' )
if not lsp_config_status then
  print 'lsp config not found!'
  return
end

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local servers = { 
  'clangd',
  'rust_analyzer',

  'kotlin_language_server',

  'html',
  'cssls',
  'tsserver',

  'pyright',
  'sumneko_lua',

  'ltex'
}

for _, lsp in ipairs(servers) do
  lsp_config[lsp].setup {
    capabilities = capabilities
  }
end


