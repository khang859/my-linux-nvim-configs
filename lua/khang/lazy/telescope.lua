return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{ '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Telescope find files' },
		{ '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Telescope live grep' },
		{ '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Telescope buffers' },
		{ '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Telescope help tags' },
	},
	config = function()
		require('telescope').setup({
			defaults = {
				vimgrep_arguments = {
					'rg',
					'--color=never',
					'--no-heading',
					'--with-filename',
					'--line-number',
					'--column',
					'--smart-case'
				},
			},
		})
	end,
}
