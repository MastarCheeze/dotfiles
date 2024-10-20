return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    -- local defaults = require("telescope.themes").get_dropdown({})
    local defaults = {}
    defaults.prompt_prefix = " "

    require("telescope").setup({
      defaults = defaults,
      pickers = {
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
