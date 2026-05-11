return {
	'nvim-tree/nvim-tree.lua',
	version = '*',
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		local nvimtree = require('nvim-tree')


		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		vim.opt.termguicolors = true


		require('nvim-tree').setup({
			sort = {
				sorter = 'case_sensitive',
			},
			view = {
				width = 35,
				relativenumber = true,
			},
			renderer = {
				group_empty = true,
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
						},
					},
				},
			},
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				dotfiles = true,
			},
			git = {
				ignore = false,
			},
		})


		vim.keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })
		vim.keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>', { desc = 'Toggle file explorer on current file' })
		vim.keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>', { desc = 'Collapse file explorer' })
		vim.keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', { desc = 'Refresh file explorer' })
	end
}
