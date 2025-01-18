-- language servive providers
return {
	-- 1. lsp package manager
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	-- 2. language servers to be installed by default by mason
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
					"ts_ls",
					"solidity_ls_nomicfoundation",
				},
			})
		end,
	},
	--3. nvim lsp client config for various lsp servers
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
				"ts_ls",
			}

			-- Function to setup each LSP server
			local function setup_servers()
				for _, lsp in ipairs(servers) do
					local success, server_config = pcall(function()
						return require("lspconfig")[lsp]
					end)

					if success and server_config then
						server_config.setup({
							capabilities = capabilities,
						})
					else
						vim.notify("LSP server '" .. lsp .. "' not found", vim.log.levels.ERROR)
					end
				end
			end

			-- Initialize servers
			setup_servers()

			lspconfig["solidity"].setup({
				capabilities = capabilities,
				cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
				filetypes = { "solidity" },
				single_file_support = true,
			})

			--
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
			vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
			vim.keymap.set('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', {})
		end,
	}
}
