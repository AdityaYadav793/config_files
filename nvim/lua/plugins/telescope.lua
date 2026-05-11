return {
	{
		'nvim-telescope/telescope.nvim',
		version = '*',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
			'nvim-tree/nvim-web-devicons',
		},
		config = function()
			local telescope = require('telescope')

			telescope.setup({
				defaults = {
					path_display = { 'smart' },
				}
			})

			telescope.load_extension('fzf')

			vim.keymap.set('n', '<C-p>', '<cmd>Telescope find_files<cr>', { desc = 'Fuzzy find files in cwd' })
			vim.keymap.set('n', '<C-f>', '<cmd>Telescope live_grep<cr>', { desc = 'Find string in cwd' })
			vim.keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<cr>', { desc = 'Find string under cursor in cwd' })
		end
	},
	{
		'nvim-telescope/telescope-ui-select.nvim',
		config = function()
			require('telescope').setup({
				extensions = {
					['ui-select'] = {
						require('telescope.themes').get_dropdown {}
					}
				}
			})
			require('telescope').load_extension('ui-select')
		end
	}
}
