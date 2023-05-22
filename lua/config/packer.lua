vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Base
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({ 
		'rose-pine/neovim', 
		as = 'rose-pine', 
		config = function()
			vim.cmd('colorscheme rose-pine')
		end	
	})

	use(
		'nvim-treesitter/nvim-treesitter', 
		{ run = ':TSUpdate' }
	)
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')

    -- Custom
    use('github/copilot.vim')
    use('jose-elias-alvarez/null-ls.nvim')
    use('MunifTanjim/prettier.nvim')
    use('simrat39/rust-tools.nvim')
    use('voldikss/vim-floaterm')

    -- Core
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Required
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Required

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
		{'hrsh7th/cmp-vsnip'},     
		{'hrsh7th/cmp-path'},     
		{'hrsh7th/cmp-buffer'},     
		{'hrsh7th/vim-vsnip'},     
	}
}
end)

