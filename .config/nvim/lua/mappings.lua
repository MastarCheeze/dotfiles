local map = vim.keymap.set
local del = vim.keymap.del

-- File explorer
map({ "n", "i", "v" }, "<M-n>", "<cmd>NvimTreeToggle <cr>", { desc = "NvimTree toggle window", silent = true })
map({ "n", "i", "v" }, "<M-e>", "<cmd>NvimTreeFocus <cr>", { desc = "NvimTree focus window", silent = true })

-- Buffers
map({ "n", "i", "v" }, "<M-]>", "<cmd>bn <cr>", { desc = "Buffer next", silent = true })
map({ "n", "i", "v" }, "<M-[>", "<cmd>bp <cr>", { desc = "Buffer prev", silent = true })
map({ "n", "i", "v" }, "<M-q>", function()
  vim.cmd(":BufOnly")
  require('lualine').refresh()
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
map({ "n", "v" }, ",f", function()
  require("conform").format({ lsp_format = true })
end, { desc = "Format file" })

-- Comment
map("n", ",/", "gcc", { desc = "Toggle comment", remap = true })
map("v", ",/", "gc", { desc = "Toggle comment", remap = true })

-- WhichKey guide
map("n", "<Leader>?", "<cmd>WhichKey <cr>", { desc = "WhichKey all keymaps" })

