 -- Key settings
require'plugins'
require'settings'

 -- Information
require'nvimtree'
--require'statusline'
require'luastatusline'
require'topbufferline'

 -- Prettier
require'colorscheme'
-- indent-blankline


 -- Syntax improvements
require'treesitter'
require'nvimcompe'

 -- Language Server Protocols
--require('lsp.bash-ls')
require('lsp.haskell-ls')
--require('lsp.latex-ls')
require('lsp.lua-ls')
require('lsp.python-ls')
require('lsp.rust-ls')
--require('lsp.yaml-ls')

 -- at end to ensure overriding of other plugins
require('mappings')
