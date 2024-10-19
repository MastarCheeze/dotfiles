vim.g.mapleader = " "

-- load lazy package manager
require("lazy-setup")

-- load themes, options and mappings
require("options")
vim.schedule(function()
	require("mappings")
end)
