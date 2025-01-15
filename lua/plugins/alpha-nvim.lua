return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require 'alpha'
		local dashboard = require 'alpha.themes.dashboard'
		dashboard.section.header.val = {
			[[      AAAA]],
			[[AAAAAA  AAAA]],
			[[AA    AAAA  AAAA        KKHHKKHHHH]],
			[[AAAA    AAAA  AA    HHBBKKKKKKKKKKKKKK]],
			[[  AAAAAA      AAKKBBHHKKBBYYBBKKKKHHKKKKKK]],
			[[      AAAA  BBAAKKHHBBBBKKKKBBYYBBHHHHKKKKKK]],
			[[        BBAABBKKYYYYHHKKYYYYKKKKBBBBBBZZZZZZ]],
			[[    YYBBYYBBKKYYYYYYYYYYKKKKBBKKAAAAZZOOZZZZ]],
			[[    XXXXYYYYBBYYYYYYYYBBBBBBKKKKBBBBAAAAZZZZ]],
			[[    XXXXUUUUYYYYBBYYYYYYBBKKBBZZOOAAZZOOAAAAAA]],
			[[  ZZZZZZXXUUXXXXYYYYYYYYBBAAAAZZOOOOAAOOZZZZAAAA]],
			[[  ZZUUZZXXUUUUXXXXUUXXFFFFFFFFAAAAOOZZAAZZZZ  AA]],
			[[    RRRRUUUUZZZZZZZZXXOOFFFFOOZZOOAAAAAAZZZZAA]],
			[[    CCSSUUUUZZXXXXZZXXOOFFFFOOZZOOOOZZOOAAAA]],
			[[    CCCCUUUUUUUUUURRRROOFFFFOOZZOOOOZZOOZZZZ]],
			[[    CCCCUUUUUUUUSSCCCCEEQQQQOOZZOOOOZZOOZZZZ]],
			[[    CCCCUUGGUUUUCCCCCCEEQQQQOOZZOOOOZZEEZZ]],
			[[    RRRRGGGGUUGGCCCCCCOOOOOOOOZZOOEEZZII]],
			[[      IIRRGGGGGGCCCCCCOOOOOOOOZZEEII]],
			[[            GGRRCCCCCCOOOOEEEEII  II]],
			[[                RRRRRREEEE  IIII]],
			[[                      II]],
			[[]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("SPC f f", "  Find file"),
			dashboard.button("SPC s s", "  NeoBee config", "<Cmd>Neotree reveal ~/.config/nvim<CR>"),
			dashboard.button("SPC q q", "  Quit", "<Cmd>qa<CR>"),
		}
		local handle = io.popen('fortune')
		local fortune = handle:read("*a")
		handle:close()
		dashboard.section.footer.val = fortune

		dashboard.config.opts.noautocmd = true

		vim.cmd [[autocmd User AlphaReady echo 'ready']]

		alpha.setup(dashboard.config)
	end
}
