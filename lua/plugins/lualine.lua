-- Defining the Pure Black color theme for Lualine
local pure_black_theme = {
	normal = {
		a = { fg = '#FFFFFF', bg = '#000000', gui = 'bold' }, -- White text on black background
		b = { fg = '#FFFFFF', bg = '#222222' },           -- Dark gray background for inactive parts
		c = { fg = '#AAAAAA', bg = '#000000' },           -- Lighter gray for center section
	},
	insert = {
		a = { fg = '#FFFFFF', bg = '#0066CC', gui = 'bold' }, -- Blue for insert mode
		b = { fg = '#FFFFFF', bg = '#003366' },           -- Darker blue for inactive
		c = { fg = '#AAAAAA', bg = '#000000' },
	},
	visual = {
		a = { fg = '#FFFFFF', bg = '#FF6600', gui = 'bold' }, -- Orange for visual mode
		b = { fg = '#FFFFFF', bg = '#CC5200' },           -- Darker orange for inactive
		c = { fg = '#AAAAAA', bg = '#000000' },
	},
	replace = {
		a = { fg = '#FFFFFF', bg = '#FF3333', gui = 'bold' }, -- Red for replace mode
		b = { fg = '#FFFFFF', bg = '#CC1C1C' },           -- Darker red for inactive
		c = { fg = '#AAAAAA', bg = '#000000' },
	},
	command = {
		a = { fg = '#FFFFFF', bg = '#008080', gui = 'bold' }, -- Teal for command mode
		b = { fg = '#FFFFFF', bg = '#006666' },         -- Darker teal for inactive
		c = { fg = '#AAAAAA', bg = '#000000' },
	},

	inactive = {
		a = { fg = '#555555', bg = '#000000', gui = 'bold' }, -- Slightly dimmed text for inactive
		b = { fg = '#AAAAAA', bg = '#000000' },
		c = { fg = '#AAAAAA', bg = '#000000' },
	},
}

return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('lualine').setup {
			options = {
				icons_enabled = true,
				theme = pure_black_theme,
				component_separators = { left = '', right = '' },
				section_separators = { left = '', right = '' },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				always_show_tabline = true,
				globalstatus = false,
				refresh = {
					statusline = 100,
					tabline = 100,
					winbar = 100,
				}
			},
			sections = {
				lualine_a = { 'mode' },
				lualine_b = { 'branch', 'diff', 'diagnostics' },
				lualine_c = { 'filename', 'searchcount' },
				lualine_x = { 'encoding', 'fileformat', 'filetype' },
				lualine_y = { 'progress' },
				lualine_z = { 'location' }
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { 'filename' },
				lualine_x = { 'location' },
				lualine_y = {},
				lualine_z = {}
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {}
		}
	end,
}
