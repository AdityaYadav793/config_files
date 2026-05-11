return {	
	"catppuccin/nvim",
	version = '*',
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme "catppuccin"
	end
}
