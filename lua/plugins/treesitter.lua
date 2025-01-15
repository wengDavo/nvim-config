-- builds a concrete syntax tree
-- syntax highlighting, list of document symbols, code blocks, mutual text delimiters/parentheses, code objects, indentation, folding
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			auto_install = true,
			ensure_installed = { "c", "lua", "vim", "vimdoc","javascript", "html", "angular", "css", "dockerfile", "graphql", "json", "nginx", "scss", "solidity", "sql", "yaml" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
