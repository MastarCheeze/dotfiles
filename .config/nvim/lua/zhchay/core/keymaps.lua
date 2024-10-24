local map = vim.keymap.set

vim.g.mapleader = " "

map("n", "<leader>w", "<cmd>w<CR>", { desc = "Write buffer" })
map("n", "<leader>q", "<cmd>qa<CR>", { desc = "Quit all windows" })

map({ "n", "v" }, "<esc>", "<cmd>noh<CR>", { desc = "Clear highlights" })

-- Copy and paste
map("x", "<leader>p", "\"_dP", { noremap = true, desc = "Paste over & retain buffer" })

-- Comments
map("n", "<leader>/", "gcc", { remap = true, desc = "Comment toggle" })
map("v", "<leader>/", "gc", { remap = true, desc = "Comment toggle" })

-- Center cursor on screen when moving vertically
map("n", "<C-d>", "<C-d>zz", { noremap = true })
map("n", "<C-u>", "<C-u>zz", { noremap = true })
map("n", "n", "nzzzv", { noremap = true })
map("n", "N", "Nzzzv", { noremap = true })

-- Shift selected lines
map("v", "J", ":m '>+1<CR>gv=gv", { silent = true, desc = "Shift lines up" })
map("v", "K", ":m '<-2<CR>gv=gv", { silent = true, desc = "Shift lines down" })

-- Cursor switch window
map("n", "<leader>ah", "<C-w>h", { desc = "Switch window left" })
map("n", "<leader>al", "<C-w>l", { desc = "Switch window right" })
map("n", "<leader>aj", "<C-w>j", { desc = "Switch window down" })
map("n", "<leader>ak", "<C-w>k", { desc = "Switch window up" })

-- Window management
map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
map("n", "<leader>sw", "<cmd>close<CR>", { desc = "Close current split" })

map("n", "<leader>tt", "<cmd>tabnew<CR>", { desc = "Open new tab" })
map("n", "<leader>tw", "<cmd>tabclose<CR>", { desc = "Close current tab" })
map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
map("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
