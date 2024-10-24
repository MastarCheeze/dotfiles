return {
  "stevearc/conform.nvim",
  event = { "BufWritePre", "BufNewFile" },
  cmd = { "ConformInfo" },
  dependencies = { { "zapling/mason-conform.nvim", opts = {} } },

  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      html = { "prettier" },
      markdown = { "prettier" },
    },
  },

  init = function()
    local map = vim.keymap.set

    map({ "n", "v" }, "<leader>m", function()
      require("conform").format({ lsp_format = true })
    end, { desc = "Format buffer" })
  end,
}
