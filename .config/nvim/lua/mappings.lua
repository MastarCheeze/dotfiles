local map = vim.keymap.set
local del = vim.keymap.del

map("n", "<leader>w", "<cmd>w<cr>", { noremap = true, desc = "Write buffer" })
map("n", "<leader>q", "<cmd>qa<cr>", { noremap = true, desc = "Quit all windows" })

-- Vertical movement centering
map("n", "<C-d>", "<C-d>zz", { noremap = true })
map("n", "<C-u>", "<C-u>zz", { noremap = true })
map("n", "n", "nzzzv", { noremap = true })
map("n", "N", "Nzzzv", { noremap = true })

-- Copy and paste
map("n", "<leader>p", "\"_dP", { noremap = true, desc = "Paste over & retain buffer" })
map("n", "<leader>y", "\"+y", { noremap = true, desc = "Yank to system clipboard" })

-- File explorer
<<<<<<< HEAD
map({ "n", "i", "v" }, "<M-n>", "<cmd>NvimTreeToggle<cr>", { silent = true, desc = "NvimTree toggle window" })
map({ "n", "i", "v" }, "<leader>e", "<cmd>NvimTreeFocus<cr>", { silent = true, desc = "NvimTree focus window" })

-- Tabs
map({ "n", "i", "v" }, "<M-t>", "<cmd>tabnew<cr>", { desc = "Tab new" })
map({ "n", "i", "v" }, "<M-w>", "<cmd>tabc<cr>", { desc = "Tab close" })
map({ "n", "i", "v" }, "<M-]>", "<cmd>tabn<cr>", { desc = "Tab next" })
map({ "n", "i", "v" }, "<M-[>", "<cmd>tabp<cr>", { desc = "Tab prev" })

-- Tabs
map({ "n", "i", "v" }, "<M-n>", "<cmd>tabnew<cr>", { desc = "Tab new" })
map({ "n", "i", "v" }, "<M-w>", "<cmd>tabc<cr>", { desc = "Tab close" })
map({ "n", "i", "v" }, "<M-]>", "<cmd>tabn<cr>", { desc = "Tab next" })
map({ "n", "i", "v" }, "<M-[>", "<cmd>tabp<cr>", { desc = "Tab prev" })

-- Buffers
-- map({ "n", "i", "v" }, "<M-q>", function()
--   vim.cmd(":BufOnly")
--   require("lualine").refresh()
-- end, { desc = "Buffer close all others" })

-- Window movement focus
map("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch window up" })

-- Telescope picker
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>o", builtin.oldfiles, { desc = "Telescope find oldfiles" })
vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>r", builtin.registers, { desc = "Telescope registers" })
vim.keymap.set("n", "<leader>h", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>c", builtin.git_commits, { desc = "Telescope Git commits" })
vim.keymap.set("n", "<leader>x", builtin.git_bcommits, { desc = "Telescope Git buffer commits" })
vim.keymap.set("n", "<leader>z", builtin.git_branches, { desc = "Telescope Git branches" })
vim.keymap.set("n", "<leader>s", builtin.git_status, { desc = "Telescope Git status" })

-- Format
map({ "n", "v" }, "<leader>m", function()
  require("conform").format({ lsp_format = true })
end, { desc = "Format file" })

-- Comment
map("n", "<leader>/", "gcc", { remap = true, desc = "Comment toggle" })
map("v", "<leader>/", "gc", { remap = true, desc = "Comment toggle" })

-- WhichKey guide
map("n", "<leader>?", "<cmd>WhichKey<cr>", { desc = "WhichKey all keymaps" })
