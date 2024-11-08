return {
	-- lsp package manager
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	-- lsp language servers to be installed by default
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				automatic_installation = true,
				ensure_installed = {
					"lua_ls",
					"eslint",
					"html",
					"pyright",
					"tailwindcss",
					"angularls",
					"cssls",
					"vuels",
					"ts_ls"
				},
			})
		end,
	},
	-- Install server and enable communication between neovim and lsp and vice versa
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require("lspconfig")
			local servers = {
				"lua_ls",
				"eslint",
				"html",
				"pyright",
				"tailwindcss",
				"angularls",
				"cssls",
				"vuels",
				"ts_ls"
			}

			lspconfig.lua_ls.setup {}
			lspconfig.eslint.setup {}
			lspconfig.html.setup {}
			lspconfig.pyright.setup {}
			lspconfig.tailwindcss.setup {}
			lspconfig.angularls.setup {}
			lspconfig.cssls.setup {}
			lspconfig.vuels.setup {}
			lspconfig.ts_ls.setup {}

			for _, lsp in ipairs(servers) do
				lspconfig[lsp].setup({
					capabilities = capabilities,
				})
			end

			--
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
			vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
			vim.keymap.set('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', {})
		end,
	}
}
