return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "Telescope",

  config = function()
    local defaults = require("telescope.themes").get_dropdown({})
    local actions = require("telescope.actions")

    defaults.prompt_prefix = " "
    defaults.layout_strategy = "center"
    defaults.layout_config = {
      center = {
        height = 0.4,
        anchor = "S",
      },
    }
    defaults.mappings = {
      i = {
        ["<M-a>"] = actions.toggle_all,
      },
    }

    require("telescope").setup({
      defaults = defaults,
      pickers = {
        buffers = {
          ignore_current_buffer = true,
          sort_lastused = true,
        },
        registers = {
          layout_config = {
            anchor = "N",
          },
        },
        git_status = {
          git_icons = {
            added = "+",
            changed = "!",
            copied = ">",
            deleted = "-",
            renamed = "➡",
            unmerged = "‡",
            untracked = "?",
          },
        },
      },
    })
  end,

  init = function()
    local map = vim.keymap.set

    map("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "Telescope find files" })
    map("n", "<leader>o", "<cmd>Telescope oldfiles<cr>", { desc = "Telescope find oldfiles" })
    map("n", "<leader>u", "<cmd>Telescope live_grep<cr>", { desc = "Telescope live grep" })
    map("n", "<leader>b", "<cmd>Telescope buffers<cr>", { desc = "Telescope buffers" })
    map({ "n", "v" }, "<leader>r", "<cmd>Telescope registers<cr>", { desc = "Telescope registers" })
    map("n", "<leader>h", "<cmd>Telescope help_tags<cr>", { desc = "Telescope help tags" })
    map("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "Telescope Git commits" })
    map("n", "<leader>gf", "<cmd>Telescope git_bcommits<cr>", { desc = "Telescope Git buffer commits" })
    map("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Telescope Git branches" })
    map("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Telescope Git status" })
  end,
}
