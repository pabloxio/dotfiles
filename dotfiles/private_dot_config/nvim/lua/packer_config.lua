-- vim: filetype=lua

local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
    install_path })
  vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- 👀 Here we go
  use 'github/copilot.vim'

  -- Icons
  use 'nvim-tree/nvim-web-devicons'

  -- theme
  use 'shaunsingh/nord.nvim'

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'nvim-treesitter/nvim-treesitter-refactor'

  -- bufferline
  use {
    'akinsho/bufferline.nvim', tag = "*",
    requires = 'nvim-tree/nvim-web-devicons'
  }

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'nvim-tree/nvim-web-devicons',
      opt = true
    }
  }

  use 'airblade/vim-gitgutter'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  }
  use 'ntpeters/vim-better-whitespace'
  -- use 'sheerun/vim-polyglot'
  use 'tpope/vim-commentary'

  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup {} end
  }
  use 'lukas-reineke/indent-blankline.nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
    }
  }

  -- LSP
  use {
    -- Manage LSP Servers and more, nvim-lsp-installer replacement
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    -- Common configs for LSP client
    'neovim/nvim-lspconfig',
  }

  -- Autocompletion plugin
  use { 'hrsh7th/nvim-cmp' }
  -- Uding nvim-cmp as a completion source
  use { 'saadparwaiz1/cmp_luasnip' }
  -- Snippets
  use { 'L3MON4D3/LuaSnip' }
  -- Snippets collections
  use 'rafamadriz/friendly-snippets'
  -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp'

  -- json schemas
  use 'b0o/schemastore.nvim'

  -- terminal
  use { 'akinsho/toggleterm.nvim' }

  use 'simrat39/symbols-outline.nvim'

  -- emoji support for Telescope
  use 'xiyaowong/telescope-emoji.nvim'

  -- go
  use 'ray-x/go.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
