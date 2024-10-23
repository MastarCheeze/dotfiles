local o = vim.o
local opt = vim.opt

o.laststatus = 3
o.showmode = false
o.showtabline = 0
o.wrap = false

o.cursorline = true
o.cursorlineopt = "both"
o.colorcolumn = "120"
o.scrolloff = 8

o.splitbelow = true
o.splitright = true
o.timeoutlen = 400

o.termguicolors = true

-- Indenting
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2
o.smartindent = true
o.autoindent = true
o.cindent = true

o.ignorecase = true
o.smartcase = true
o.mouse = "a"

-- Number
o.number = true
o.relativenumber = true
o.numberwidth = 2

o.signcolumn = "yes"
opt.fillchars = { eob = " " }

-- Backup mechanisms
o.undofile = true
o.updatetime = 250 -- interval for writing swap file to disk, also used by gitsigns
