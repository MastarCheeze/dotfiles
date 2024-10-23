return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {},
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    -- set keybinds
    local map = vim.keymap.set
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(_, bufnr)
        local function opts(desc)
          return { noremap = true, silent = true, buffer = bufnr, desc = "LSP " .. desc }
        end

        map("n", "gR", "<cmd>Telescope lsp_references<CR>", opts("Show references"))
        map("n", "gD", vim.lsp.buf.declaration, opts("Go to declaration"))
        map("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts("Show definitions"))
        map("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts("Show implementations"))
        map("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts("Show type definitions"))
        map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts("See available code actions"))
        map("n", "<leader>rn", vim.lsp.buf.rename, opts("Smart rename"))
        map("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts("Show buffer diagnostics"))
        map("n", "<leader>d", vim.diagnostic.open_float, opts("Show line diagnostics"))
        map("n", "<F8>", vim.diagnostic.goto_next, opts("go to next diagnostic"))
        map("n", "<F20>", vim.diagnostic.goto_prev, opts("Go to previous diagnostic"))
        map("n", "K", vim.lsp.buf.hover, opts("Show documentation for what is under cursor"))
        map("n", "<leader>rs", ":LspRestart<CR>", opts("Restart"))
      end,
    })

    -- Change diagnostic symbols in the gutter
    local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = "󰋽 " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    local capabilities = cmp_nvim_lsp.default_capabilities() -- assign autocompletion to every lsp server

    -- configure servers
    lspconfig["html"].setup({ capabilities = capabilities })
    lspconfig["ts_ls"].setup({ capabilities = capabilities })
    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }, -- make the language server recognize "vim" global
          },
        },
      },
    })
  end,
}

