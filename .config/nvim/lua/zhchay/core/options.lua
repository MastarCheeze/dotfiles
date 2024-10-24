local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.signcolumn = "yes"

-- Tabs and indentation
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.cindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Window splitting
opt.splitbelow = true
opt.splitright = true

-- Editor UI
opt.cursorline = true
opt.cursorlineopt = "number"
opt.colorcolumn = "120" -- editor ruler
opt.showmode = false
opt.laststatus = 3 -- always show status line
opt.showtabline = 0
opt.wrap = false
opt.scrolloff = 8 -- always keep 8 at least 8 lines above/below cursor
opt.fillchars = { eob = " " } -- remove tildes from gutter when there is no text

-- Editor theme
opt.termguicolors = true
opt.background = "dark"

-- Backup files
opt.undofile = true
opt.updatetime = 250

opt.clipboard:append("unnamedplus") -- make system clipboard the default register

opt.timeoutlen = 400 -- duration until keymap times out
opt.mouse = "" -- this is for your own good
