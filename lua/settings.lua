--- Editor options

vim.g.undotree_DiffCommand = "FC"

vim.opt.encoding = "UTF-8" -- Sets the character encoding used inside Vim.

vim.opt.title = true       -- When on, the title of the window will be set to the value of 'titlestring'

vim.opt.wrap = false
vim.cmd("set nowrap")
vim.cmd('colorscheme torte')

vim.opt.number = true         -- Print the line number in front of each line
vim.opt.relativenumber = true -- Show the line number relative to the line with the cursor in front of each line.
vim.opt.cursorline = true     -- Highlight the screen line of the cursor with CursorLine.
vim.opt.ruler = true          -- Show the line and column number of the cursor position, separated by a comma.

vim.opt.shiftwidth = 4        -- Number of spaces to use for each step of (auto)indent.
vim.opt.tabstop = 4           -- Number of spaces that a <Tab> in the file counts for.
vim.opt.smartindent = true
vim.opt.breakindent = true    -- Enable break indent

vim.opt.showcmd = true        -- Show (partial) command in the last line of the screen. Set this option off if your terminal is slow.
vim.opt.inccommand = 'split'  -- Preview substitutions live, as you type!

vim.opt.termguicolors = true
vim.opt.ttimeoutlen = 0 -- The time in milliseconds that is waited for a key code or mapped key sequence to complete.

vim.opt.undofile = true -- Save undo history
--vim.opt.swapfile = false
--vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.

vim.opt.incsearch = true
vim.opt.hlsearch = true

-- vim.opt.showmatch = true -- When a bracket is inserted, briefly jump to the matching one.
-- o.mouse -= "a -- Disable the use of the mouse. "a" you can use on all modes

vim.opt_local.conceallevel = 2 -- this option controls how hidden or "concealed" text is displayed. for obsidian nvim 
