-- formatter
return {
  "stevearc/conform.nvim",
  event = { "BufWritePre", "BufNewFile" },
  cmd = { "ConformInfo" },
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
}
