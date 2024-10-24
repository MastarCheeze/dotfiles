return {
  "hrsh7th/nvim-cmp",
  event = { "InsertEnter" },
  dependencies = {
    {
      "L3MON4D3/LuaSnip", -- snippet engine
      "rafamadriz/friendly-snippets", -- general useful snippets
    },
    {
      "hrsh7th/cmp-nvim-lsp", -- source for lsp
      "hrsh7th/cmp-buffer", -- source for text in buffer
      "hrsh7th/cmp-path", -- source for file system paths
      "saadparwaiz1/cmp_luasnip", -- source for snippets
      "hrsh7th/cmp-nvim-lua", -- source for nvim's lua runtime api
    },
  },

  config = function()
    local cmp = require("cmp")

    local luasnip = require("luasnip")
    require("luasnip.loaders.from_vscode").lazy_load() -- loads vs-code style snippets from installed plugins

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noselect,scrollbar",
      },
      snippet = { -- configure how nvim-cmp interacts with snippet engine
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<tab>"] = cmp.mapping.select_next_item(), -- next self suggestion
        ["<S-tab>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-space>"] = cmp.mapping.complete(), -- show completion suggestions
        ["<C-e>"] = cmp.mapping.abort(), -- close completion window
        ["<cr>"] = cmp.mapping.confirm({ select = false }),
      }),
      -- sources for autocompletion
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
        { name = "nvim_lua" },
      }),
    })
  end,
}
