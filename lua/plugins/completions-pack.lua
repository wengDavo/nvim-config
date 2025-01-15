return {
	-- nvimcmp=>
	-- nvim completion
	-- the tool that is responsible for displaying the window, deferes to another tool to show the suggestion
	-- luasnip=>
	-- the engine of our choice that vim.cmd defers to
	-- displays the completions
	-- it defers to another tool to actually complete it in our text
	-- cmp_luasnip =>
	-- tool that actaully completes or expands the snippets
	-- from the suggestion provided by another tool it defers to
	-- friendly-snippets =>
	-- A source
	-- package that actually contains the snippets,
	-- cmp-nvim-lsp =>
	-- A source
	-- gets it data from our installed lsps
	{
		'hrsh7th/cmp-nvim-lsp',
	},
	{
		'L3MON4D3/LuaSnip',
		dependencies = {
			'saadparwaiz1/cmp_luasnip',
			"rafamadriz/friendly-snippets"
		},
	},
	{
		'hrsh7th/nvim-cmp',
		config = function()
			local cmp = require('cmp')
			-- source: friendly
			require("luasnip.loaders.from_vscode").lazy_load()
			--
			cmp.setup({
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					['<C-b>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-e>'] = cmp.mapping.abort(),
					['<CR>'] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					{ name = 'luasnip' },
				}, {
					{ name = 'buffer' },
				})
			})
		end
	}
}
