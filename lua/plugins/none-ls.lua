-- for formatting code
return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- formatting = formatting
				-- diagnostics = linting

				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,

				-- python
				null_ls.builtins.formatting.black,
				null_ls.builtins.diagnostics.pylint,
				-- solidity
				null_ls.builtins.diagnostics.solhint,


			},
		})
		vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
	end,
}
