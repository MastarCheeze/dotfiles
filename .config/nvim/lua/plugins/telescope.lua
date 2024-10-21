return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = { "nvim-lua/plenary.nvim" },
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
          mappings = {
            i = {
              ["<M-w>"] = actions.delete_buffer,
            },
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
}
