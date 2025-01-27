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
		--	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
		}
		dashboard.config.opts.noautocmd = true

		vim.cmd [[autocmd User AlphaReady echo 'Weng It Is Ready']]

		alpha.setup(dashboard.config)
	end
}
