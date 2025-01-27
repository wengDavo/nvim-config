-- Modals to use features like fuzy search, file search and more.
return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			local builtin = require("telescope.builtin")

			-- Key mappings for Telescope
			vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
			vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
			vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
			vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

			-- Telescope default setup with custom layout configuration
			require("telescope").setup({
				defaults = {
					-- Disable borders to remove separator lines
					border = false,
				}
			})
		end,
	},
	{
		'nvim-telescope/telescope-ui-select.nvim',
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = { require("telescope.themes").get_dropdown {} }
				}
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
