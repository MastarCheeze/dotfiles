return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { { "rshkarin/mason-nvim-lint", opts = {} } },

  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      c = { "cpplint" },
      cpp = { "cpplint" },
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>n", function()
      lint.try_lint()
    end, { desc = "Lint current file" })
  end,
}
