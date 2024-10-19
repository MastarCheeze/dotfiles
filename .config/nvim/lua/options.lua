local o = vim.o
local opt = vim.opt

o.laststatus = 3
o.showmode = false

o.cursorline = true
o.cursorlineopt = "both"

-- Indenting
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

o.ignorecase = true
o.smartcase = true
o.mouse = "a"

-- Number
o.number = true
o.relativenumber = true
o.numberwidth = 2

o.signcolumn = "yes"
opt.fillchars = { eob = " " }

o.splitbelow = true
o.splitright = true
o.timeoutlen = 400
o.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
o.updatetime = 250
