return {
	-- auto closing parenthesise, brackets, etc
	{ 'windwp/nvim-autopairs', opts = {} },

	-- lsp extestions
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },

	-- for colorscheme
	{
		'ThemerCorp/themer.lua',
		opts = {
			colorscheme = 'tokyonight',
			transparent = true,
			term_colors = true,

			styles = {
				constant = { style = 'bold' },
				constantBuiltIn = { style = 'bold' },
				keyword = { style = 'italic' },
				keywordBuiltIn = { style = 'italic' },
			},
			plugins = {
				treesitter = true,
				indentline = true,
				barbar = true,
				bufferline = true,
				cmp = true,
				gitsigns = true,
				lsp = true,
				telescope = true,
			},
			remaps = {
				palette = {
					gruvbox = {
						['dimmed'] = { ['subtle'] = '#7c6f64' },
						-- ["bg"] = { ["base"] = "#1d2021" },
					},
					tokyodark = {
						['bg'] = { ['selected'] = '#32334a' },
					},
				},
				highlights = {
					gruvbox = {
						base = {
							ColorColumn = { bg = '#3c3836' },
						},
					},
					nord = {
						base = {
							ColorColumn = { bg = '#3b4252' },
						},
					},
					tokyodark = {
						base = {
							ColorColumn = { bg = '#32334a' },
						},
					},
					tokyonight = {
						base = {
							ColorColumn = { bg = '#3b4252' },
						},
					},
					catppuccin = {
						base = {
							ColorColumn = { bg = '#32334a' },
						},
					},
				},
			},
		},
	},

	-- undo tree
	{ 'mbbill/undotree' },

	-- treesitter playground to view the treesitter AST
	{ 'nvim-treesitter/playground' },

	-- improve rust integration nvim
	{
		'simrat39/rust-tools.nvim',
		opts = {},
	},

	-- { 'ThePrimeagen/harpoon', opts = {} },

	{
		'ThePrimeagen/harpoon',
		branch = 'harpoon2',
		dependencies = { 'nvim-lua/plenary.nvim' },
	},

	-- to format code
	{ 'sbdchd/neoformat' },

	-- { 'mattn/emmet-vim' },

	{
		'ray-x/lsp_signature.nvim',
		event = 'VeryLazy',
		opts = {},
		config = function(_, opts)
			require('lsp_signature').setup(opts)
		end,
	},

	{ 'dhruvasagar/vim-table-mode' },

	{ 'joerdav/templ.vim' },
	{ 'mustache/vim-mustache-handlebars' },
	{
		'stevearc/aerial.nvim',
		opts = {},
		-- Optional dependencies
		dependencies = {
			'nvim-treesitter/nvim-treesitter',
			'nvim-tree/nvim-web-devicons',
		},
	},

	{ 'nvim-treesitter/nvim-treesitter-context' },

	{
		'folke/zen-mode.nvim',
		opts = {},
	},

	{
		'folke/trouble.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts = {},
	},

	{ 'vuciv/vim-bujo' },

	{
		'nvim-neorg/neorg',
		build = ':Neorg sync-parsers',
		-- tag = "*",
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('neorg').setup {
				load = {
					['core.defaults'] = {}, -- Loads default behaviour
					['core.concealer'] = {}, -- Adds pretty icons to your documents
					['core.journal'] = {
						config = {
							journal_folder = 'Documents/neorg/journal',
						},
					},
					-- Adds pretty icons to your documents
					['core.dirman'] = { -- Manages Neorg workspaces
						config = {
							workspaces = {
								notes = '~/Documents/neorg/notes',
							},
							default_workspace = "notes",
						},
					},
				},
			}
		end,
	},
}
