local map = vim.keymap.set

-- nvim-tree
map("n", "<C-n>", "<cmd>NvimTreeToggle <cr>", { desc = "nvimtree toggle window" })
map("n", "<Leader>e", "<cmd>NvimTreeFocus <cr>", { desc = "nvimtree focus window" })

-- conform
map("n", "<leader>fm", function()
	require("conform").format({ lsp_fallback = true })
end, { desc = "general format file" })

map("n", ";", ":", { desc = "CMD enter command mode" })
