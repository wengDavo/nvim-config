return {
	{
		"nyoom-engineering/oxocarbon.nvim",
		config = function()
			vim.opt.background = "dark"
			vim.cmd("colorscheme oxocarbon")
		end,
	},
	--{
	--	"miikanissi/modus-themes.nvim",
	--	priority = 1000,
	--	config = function()
	--		vim.cmd([[colorscheme modus]]) -- modus_operandi, modus_vivendi
	--	end
	--TEST_USER_COMMENTS_SUB}
}
