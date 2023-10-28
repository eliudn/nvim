vim.g.mapleader = " "

local o = vim.o

-- vim.api.nvim_command("set clipboard+=unnamedplus")
o.clipboard = "unnamedplus"
o.guifont = "VictorMono Nerd Font:h11"
o.number = true
o.hidden = true
o.relativenumber = true
o.colorcolumn = "80"
o.mouse = "a"
o.wrap = true
-- o.lazyredraw = true

o.termguicolors = true
