local map = vim.keymap.set

-- File explorer
map("n", "<C-n>", "<cmd>NvimTreeToggle <cr>", { desc = "NvimTree toggle window", silent = true })
map("n", "<Leader>e", "<cmd>NvimTreeFocus <cr>", { desc = "NvimTree focus window", silent = true })

-- Buffers
map({"n", "i", "v"}, "<M-]>", "<cmd>bn <cr>", { desc = "Buffer next", silent = true })
map({"n", "i", "v"}, "<M-[>", "<cmd>bp <cr>", { desc = "Buffer prev", silent = true })
map({"n", "i", "v"}, "<Leader>bq", "<cmd>bn <cr>", { desc = "Buffer close all others", silent = true })

-- Format
map("n", "<Leader>fm", function()
  require("conform").format({ lsp_fallback = true })
end, { desc = "Format file" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "Toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })

