return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({})
    mason_lspconfig.setup({
      -- add lsp servers to install here
      ensure_installed = {
        "lua_ls",
        "clangd",
        "ts_ls",
        "html",
      },
      automatic_installation = true,
    })
  end,
}
