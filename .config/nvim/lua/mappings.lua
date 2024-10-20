local map = vim.keymap.set
local del = vim.keymap.del

map("n", "<leader>w", "<cmd>w<cr>", { noremap = true, desc = "Write buffer" })
map("n", "<leader>q", "<cmd>q<cr>", { noremap = true, desc = "Quit window" })

-- Vertical movement centering
map("n", "<C-d>", "<C-d>zz", { noremap = true })
map("n", "<C-u>", "<C-u>zz", { noremap = true })
map("n", "n", "nzzzv", { noremap = true })
map("n", "N", "Nzzzv", { noremap = true })

-- Copy and paste
map("n", "<leader>p", "\"_dP", { noremap = true, desc = "Paste over w/o overwriting buffer" })
map("n", "<leader>y", "\"+y", { noremap = true, desc = "Yank to system clipboard" })

-- File explorer
map({ "n", "i", "v" }, "<M-n>", "<cmd>NvimTreeToggle<cr>", { silent = true, desc = "NvimTree toggle window" })
map({ "n", "i", "v" }, "<M-e>", "<cmd>NvimTreeFocus<cr>", { silent = true, desc = "NvimTree focus window" })

-- Buffers
map({ "n", "i", "v" }, "<M-]>", "<cmd>bn<cr>", { desc = "Buffer next" })
map({ "n", "i", "v" }, "<M-[>", "<cmd>bp<cr>", { desc = "Buffer prev" })
map({ "n", "i", "v" }, "<M-w>", "<cmd>bd<cr>", { desc = "Buffer delete" })
map({ "n", "i", "v" }, "<M-q>", function()
  vim.cmd(":BufOnly")
  require("lualine").refresh()
end, { desc = "Buffer close all others", silent = true })

-- Telescope picker
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ft", builtin.builtin, { desc = "Telescope" })
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Telescope find oldfiles" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fr", builtin.registers, { desc = "Telescope registers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Telescope Git commits" })
vim.keymap.set("n", "<leader>gv", builtin.git_bcommits, { desc = "Telescope Git buffer commits" })
vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "Telescope Git branches" })
vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Telescope Git status" })

-- Format
map({ "n", "v" }, "<leader>.", function()
  require("conform").format({ lsp_format = true })
end, { desc = "Format file" })

-- Comment
map("n", "<leader>/", "gcc", { remap = true, desc = "Comment toggle" })
map("v", "<leader>/", "gc", { remap = true, desc = "Comment toggle" })

-- WhichKey guide
map("n", "<leader>?", "<cmd>WhichKey<cr>", { desc = "WhichKey all keymaps" })
