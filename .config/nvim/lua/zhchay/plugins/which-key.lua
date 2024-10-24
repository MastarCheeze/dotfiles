return {
  "folke/which-key.nvim",
  cmd = "WhichKey",
  event = "VeryLazy",

  opts = {
    preset = "modern",
    delay = 300,
    triggers = {
      { "<auto>", mode = "nixsotc" },
      { "a", mode = { "n", "v" } },
    },
    plugins = {
      marks = false, -- shows a list of your marks on ' and `
      registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
      -- the presets plugin, adds help for a bunch of default keybindings in Neovim
      -- No actual key bindings are created
      spelling = {
        enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
        suggestions = 20, -- how many suggestions should be shown in the list?
      },
      presets = {
        operators = false, -- adds help for operators like d, y, ...
        motions = false, -- adds help for motions
        text_objects = true, -- help for text objects triggered after entering an operator
        windows = true, -- default bindings on <c-w>
        nav = true, -- misc bindings to work with windows
        z = true, -- bindings for folds, spelling and others prefixed with z
        g = true, -- bindings for prefixed with g
      },
    },
    win = {
      width = 80,
    },
  },

  init = function()
    vim.keymap.set({ "n", "v" }, "<leader>?", "<cmd>WhichKey<cr>", { desc = "WhichKey show all keymaps" })
  end,
}
