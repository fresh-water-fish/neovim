vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

 -- window navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = false, silent = true })

 -- nvimtree
vim.api.nvim_set_keymap(
	"n", "<C-n>", ":NvimTreeToggle<CR>", 
	{ noremap = true, silent = true }
)

 -- nvim compe
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
