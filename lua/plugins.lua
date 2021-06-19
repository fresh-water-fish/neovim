local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Recompile after change in this file

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Information
    use 'kyazdani42/nvim-tree.lua'
    use 'glepnir/galaxyline.nvim'
    use 'akinsho/nvim-bufferline.lua'
    use 'hoob3rt/lualine.nvim'
    -- Prettier 
    --use {'lukas-reineke/indent-blankline.nvim', branch = "lua"}
    use 'kyazdani42/nvim-web-devicons'
    use 'siduck76/nvim-base16.lua'
    use 'norcalli/nvim-colorizer.lua'

    -- Language and autocomplete
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'hrsh7th/nvim-compe'

    -- LSP 
    use 'neovim/nvim-lspconfig'

end)
