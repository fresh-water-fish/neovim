vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

 -- window navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = false, silent = true })

-- easily escape terminal
vim.api.nvim_set_keymap('t', '<esc>', '<C-\\><C-n>', {noremap = true, silent = true})

 -- nvimtree
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", {noremap = true, silent = true})

