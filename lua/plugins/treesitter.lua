return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	ocnfig = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			auto_install = true,
			ensure_installed = { "c", "lua", "vim", "vimdoc","javascript", "html", "angular", "css", "dockerfile", "graphql", "json", "nginx", "scss", "solidity", "sql", "yaml" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
