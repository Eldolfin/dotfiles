return function (use)
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	-- colored brackets
	use 'frazrepo/vim-rainbow'

	use 'windwp/nvim-ts-autotag'

	use 'mfussenegger/nvim-jdtls'

	use 'windwp/nvim-autopairs'

	-- use "zbirenbaum/copilot.lua"

	-- css colors previewer
	use 'norcalli/nvim-colorizer.lua'

	use 'jbyuki/instant.nvim'

	use 'mg979/vim-visual-multi' 

	-- for flexing on discord 
	-- use 'andweeb/presence.nvim'

	use {
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
	}

	use 'ggandor/leap.nvim'

	use "ray-x/lsp_signature.nvim"

	-- rust things
	use 'simrat39/rust-tools.nvim'
	-- Debugging
	use 'nvim-lua/plenary.nvim'
	use 'mfussenegger/nvim-dap'

	--for path autocompletions
	use 'hrsh7th/cmp-path'

	-- autocompletes cargo versions
	use {
		'saecki/crates.nvim',
		event = { "BufRead Cargo.toml" },
		requires = { { 'nvim-lua/plenary.nvim' } },
		config = function()
			require('crates').setup()
		end,
	}

	use {'stevearc/dressing.nvim'}

	use {
		'glepnir/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				-- config
			}
		end,
		requires = {'nvim-tree/nvim-web-devicons'}
	}
end
