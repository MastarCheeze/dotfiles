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
map({ "n", "v" }, "<leader>p", "\"_dP", { noremap = true, desc = "Paste over & retain buffer" })
map("n", "<leader>y", "\"+y", { noremap = true, desc = "Yank to system clipboard" })

-- File explorer
map({ "n", "i", "v" }, "<M-n>", "<cmd>NvimTreeToggle<cr>", { silent = true, desc = "NvimTree toggle window" })
map("n", "<S-e>", "<cmd>NvimTreeFocus<cr>", { silent = true, desc = "NvimTree focus window" })

-- Tabs
-- map({ "n", "i", "v" }, "<M-t>", "<cmd>tabnew<cr>", { desc = "Tab new" })
-- map({ "n", "i", "v" }, "<M-w>", "<cmd>tabc<cr>", { desc = "Tab close" })
-- map({ "n", "i", "v" }, "<M-]>", "<cmd>tabn<cr>", { desc = "Tab next" })
-- map({ "n", "i", "v" }, "<M-[>", "<cmd>tabp<cr>", { desc = "Tab prev" })

-- Buffers
map({ "n", "i", "v" }, "<M-q>", "<cmd>%bd<cr>")
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
vim.keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>o", "<cmd>Telescope oldfiles<cr>", { desc = "Telescope find oldfiles" })
vim.keymap.set("n", "<leader>g", "<cmd>Telescope live_grep<cr>", { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>b", "<cmd>Telescope buffers<cr>", { desc = "Telescope buffers" })
vim.keymap.set({ "n", "v" }, "<leader>r", "<cmd>Telescope registers<cr>", { desc = "Telescope registers" })
vim.keymap.set("n", "<leader>h", "<cmd>Telescope help_tags<cr>", { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>c", "<cmd>Telescope git_commits<cr>", { desc = "Telescope Git commits" })
vim.keymap.set("n", "<leader>x", "<cmd>Telescope git_bcommits<cr>", { desc = "Telescope Git buffer commits" })
vim.keymap.set("n", "<leader>z", "<cmd>Telescope git_branches<cr>", { desc = "Telescope Git branches" })
vim.keymap.set("n", "<leader>s", "<cmd>Telescope git_status<cr>", { desc = "Telescope Git status" })

-- Format
map({ "n", "v" }, "<leader>m", function()
  require("conform").format({ lsp_format = true })
end, { desc = "Format file" })

-- Comment
map("n", "<leader>/", "gcc", { remap = true, desc = "Comment toggle" })
map("v", "<leader>/", "gc", { remap = true, desc = "Comment toggle" })

-- WhichKey guide
map("n", "<leader>?", "<cmd>WhichKey<cr>", { desc = "WhichKey all keymaps" })
