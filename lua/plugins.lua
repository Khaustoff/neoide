local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	
	--Colorschemes
 	'neanias/everforest-nvim', 
  'sainnhe/gruvbox-material',
 -- 'ellisonleao/gruvbox.nvim',
  'morhetz/gruvbox',

  --Lsp
	'neovim/nvim-lspconfig',
	'williamboman/mason.nvim',

	--Autocomplete
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-vsnip',
	'hrsh7th/vim-vsnip',

	--Snippets
	'L3MON4D3/LuaSnip',
	'saadparwaiz1/cmp_luasnip',	
	'rafamadriz/friendly-snippets',
	'onsails/lspkind-nvim',

	--IDE
	'nvim-treesitter/nvim-treesitter',
	'puremourning/vimspector',
	'tmsvg/pear-tree',
	'zivyangll/git-blame.vim',
  'camdencheek/tree-sitter-go-mod',
  "cappyzawa/trim.nvim",
  
  --Create Colorscheme
  'rktjmp/lush.nvim',

  --Other
  "nvim-neo-tree/neo-tree.nvim",
  "nvim-lua/plenary.nvim",
  "nvim-tree/nvim-web-devicons",
  "MunifTanjim/nui.nvim",
  'ryanoasis/vim-devicons',
	'ap/vim-css-color',
  'nvim-lualine/lualine.nvim',
  'nvim-telescope/telescope.nvim',
  'nvim-lua/plenary.nvim',
  'goolord/alpha-nvim'

},

{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...}

)
