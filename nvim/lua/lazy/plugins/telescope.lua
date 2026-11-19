return {
	'nvim-telescope/telescope.nvim',
	version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	config = function()
		require('telescope').setup {
			defaults = {
				-- Default configuration for telescope goes here:
				disable_devicons = true,
				mappings = {
					i = {
						-- map actions.which_key to <C-h> (default: <C-/>)
						-- actions.which_key shows the mappings for your picker,
						-- e.g. git_{create, delete, ...}_branch for the git_branches picker
						["<C-h>"] = "which_key"
					}
				}
			},
		}
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', function()
			vim.cmd("Telescope find_files disable_devicons=true")
		end)
		vim.keymap.set('n', '<leader>fb', function()
			vim.cmd("Telescope buffers disable_devicons=true")
		end)
		vim.keymap.set('n', '<leader>fg', function()
			vim.cmd("Telescope live_grep disable_devicons=true")
		end)
		vim.keymap.set('n', '<leader>fo', function()
			vim.cmd("Telescope oldfiles disable_devicons=true")
		end)
	end
}
