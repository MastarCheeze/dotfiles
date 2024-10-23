return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {},
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    vim.diagnostic.config({
      float = {
        header = "",
        format = function(diagnostic)
          return diagnostic.message .. " " .. diagnostic.source
        end,
        border = "solid",
      },
    })

    -- set keybinds
    local map = vim.keymap.set
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(_, bufnr)
        local function opts(desc)
          return { noremap = true, silent = true, buffer = bufnr, desc = "LSP " .. desc }
        end

        map("n", "<leade>lr", "<cmd>Telescope lsp_references<cr>", opts("show references"))
        map("n", "<leader>ld", "<cmd>Telescope lsp_definitions<cr>", opts("show definitions"))
        map("n", "<leader>lt", "<cmd>Telescope lsp_type_definitions<cr>", opts("show type definitions"))
        map("n", "<leader>li", "<cmd>Telescope lsp_implementations<cr>", opts("show implementations"))
        map("n", "<leader>lD", vim.lsp.buf.declaration, opts("go to declaration"))
        map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts("see all code actions"))
        map("n", "<leader>cr", vim.lsp.buf.rename, opts("smart rename"))
        map("n", "<leader>d", function()
          vim.diagnostic.open_float()
        end, opts("show line diagnostics"))
        map("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<cr>", opts("show buffer diagnostics"))
        map("n", "]d", function()
          local jump = vim.diagnostic.get_next()
          vim.diagnostic.goto_next({ float = true })
          if jump then
            vim.cmd("normal! zz")
          end
          -- vim.diagnostic.jump({ count = 1, float = true }) -- use these in 0.11
        end, opts("go to next diagnostic"))
        map("n", "[d", function()
          local jump = vim.diagnostic.get_prev()
          vim.diagnostic.goto_prev({ float = true })
          if jump then
            vim.cmd("normal! zz")
          end
          -- vim.diagnostic.jump({ count = -1, float = true })
        end, opts("go to previous diagnostic"))
        map("n", "<leader>.", vim.lsp.buf.hover, opts("show docs for item under cursor"))
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
