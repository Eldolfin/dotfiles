return {
	{
		'nvim-tree/nvim-tree.lua',
		dependencies = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	},

	-- colored brackets
	'frazrepo/vim-rainbow',

	'windwp/nvim-ts-autotag',

	'mfussenegger/nvim-jdtls',

	'windwp/nvim-autopairs',

	"zbirenbaum/copilot.lua",

	-- css colors previewer
	'norcalli/nvim-colorizer.lua',

	'jbyuki/instant.nvim',

	'mg979/vim-visual-multi', 

	-- for flexing on discord 
	-- 'andweeb/presence.nvim',

	{
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 600
			require("which-key").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	},

	'ggandor/leap.nvim',

	"ray-x/lsp_signature.nvim",

	-- rust things
	'simrat39/rust-tools.nvim',
	-- Debugging
	'nvim-lua/plenary.nvim',
	'mfussenegger/nvim-dap',

	--for path autocompletions
	'hrsh7th/cmp-path',

	-- autocompletes cargo versions
	{
		'saecki/crates.nvim',
		event = { "BufRead Cargo.toml" },
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('crates').setup()
		end,
	},

	-- better nvim menus
	'stevearc/dressing.nvim',

	'iamcco/markdown-preview.nvim',

	-- when opening a file: go back to previous locations
	'farmergreg/vim-lastplace'
}
