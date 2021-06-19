vim.cmd('syntax on')
vim.o.termguicolors=true
vim.o.fileencoding="utf-8"
vim.cmd('filetype plugin on')
vim.o.showmode=false
vim.o.title=true
vim.o.conceallevel=0

 -- Nicer tabs and indenting
vim.cmd('set tabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set expandtab')
vim.cmd('set smarttab')
vim.bo.smartindent=true


 -- Relative numbering
vim.cmd('set number relativenumber')

 
 -- Clipboard settings
vim.o.clipboard="unnamedplus"


-- vim.cmd('set iskyword+=-')
--vim.

