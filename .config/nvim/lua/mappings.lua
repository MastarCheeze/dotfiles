local map = vim.keymap.set
local del = vim.keymap.del

-- File explorer
map({ "n", "i", "v" }, "<M-n>", "<cmd>NvimTreeToggle <cr>", { desc = "NvimTree toggle window", silent = true })
map({ "n", "i", "v" }, "<M-e>", "<cmd>NvimTreeFocus <cr>", { desc = "NvimTree focus window", silent = true })

-- Buffers
map({ "n", "i", "v" }, "<M-]>", "<cmd>bn <cr>", { desc = "Buffer next", silent = true })
map({ "n", "i", "v" }, "<M-[>", "<cmd>bp <cr>", { desc = "Buffer prev", silent = true })
map({ "n", "i", "v" }, "<M-q>", "<cmd>:BufOnly <cr>", { desc = "Buffer close all others", silent = true })

-- Format
map({ "n", "v" }, ",f", function()
  require("conform").format({ lsp_format = true })
end, { desc = "Format file" })

-- Comment
map("n", ",/", "gcc", { desc = "Toggle comment", remap = true })
map("v", ",/", "gc", { desc = "Toggle comment", remap = true })

-- WhichKey guide
map("n", "<Leader>?", "<cmd>WhichKey <cr>", { desc = "WhichKey all keymaps" })
