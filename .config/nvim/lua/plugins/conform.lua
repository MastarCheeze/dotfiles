-- formatter
return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
    },
    formatters = {
      stylua = {
        prepend_args = { "--indent-type", "spaces", "--indent-width", "2" },
      },
    },
  },
}
