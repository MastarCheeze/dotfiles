local map = vim.keymap.set
local del = vim.keymap.del

map("n", "<leader>w", "<cmd>w<cr>", { noremap = true, desc = "Write buffer" })
map("n", "<leader>q", "<cmd>qa<cr>", { noremap = true, desc = "Quit all windows" })
map({ "n", "v" }, ";", ":") -- make life easier
map({ "n", "v" }, "<esc>", "<cmd>noh<cr>") -- remove highlights with esc

-- Vertical movement centering
map("n", "<C-d>", "<C-d>zz", { noremap = true })
map("n", "<C-u>", "<C-u>zz", { noremap = true })
map("n", "n", "nzzzv", { noremap = true })
map("n", "N", "Nzzzv", { noremap = true })

-- Copy and paste
map("x", "<leader>p", "\"_dP", { noremap = true, desc = "Paste over & retain buffer" })
map({ "n", "v" }, "<leader>y", "\"+y", { noremap = true, desc = "Yank to system clipboard" })
map({ "n", "v" }, "<leader>d", "\"_d", { noremap = true, desc = "Delete to void register" })

-- Shift lines
map("v", "J", ":m '>+1<cr>gv=gv", { silent = true, desc = "Shift lines up" })
map("v", "K", ":m '<-2<cr>gv=gv", { silent = true, desc = "Shift lines down" })

-- File explorer
map({ "n", "i", "v" }, "<M-n>", "<cmd>NvimTreeToggle<cr>", { silent = true, desc = "NvimTree toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<cr>", { silent = true, desc = "NvimTree focus window" })

-- Tabs
-- map({ "n", "i", "v" }, "<M-t>", "<cmd>tabnew<cr>", { desc = "Tab new" })
-- map({ "n", "i", "v" }, "<M-w>", "<cmd>tabc<cr>", { desc = "Tab close" })
-- map({ "n", "i", "v" }, "<M-]>", "<cmd>tabn<cr>", { desc = "Tab next" })
-- map({ "n", "i", "v" }, "<M-[>", "<cmd>tabp<cr>", { desc = "Tab prev" })

-- Buffers
map({ "n", "i", "v" }, "<M-q>", "<cmd>%bd<cr>", { desc = "Close all buffers" })
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
map("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "Telescope find files" })
map("n", "<leader>o", "<cmd>Telescope oldfiles<cr>", { desc = "Telescope find oldfiles" })
map("n", "<leader>y", "<cmd>Telescope live_grep<cr>", { desc = "Telescope live grep" })
map("n", "<leader>b", "<cmd>Telescope buffers<cr>", { desc = "Telescope buffers" })
map({ "n", "v" }, "<leader>r", "<cmd>Telescope registers<cr>", { desc = "Telescope registers" })
map("n", "<leader>h", "<cmd>Telescope help_tags<cr>", { desc = "Telescope help tags" })
map("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "Telescope Git commits" })
map("n", "<leader>gC", "<cmd>Telescope git_bcommits<cr>", { desc = "Telescope Git buffer commits" })
map("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Telescope Git branches" })
map("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Telescope Git status" })

-- Format
map({ "n", "v" }, "<leader>m", function()
  require("conform").format({ lsp_format = true })
end, { desc = "Format file" })

-- Comment
map("n", "<leader>/", "gcc", { remap = true, desc = "Comment toggle" })
map("v", "<leader>/", "gc", { remap = true, desc = "Comment toggle" })

-- WhichKey guide
map("n", "<leader>?", "<cmd>WhichKey<cr>", { desc = "WhichKey all keymaps" })

