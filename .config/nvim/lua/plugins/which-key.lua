-- keyboard shortcuts guide
return {
  "folke/which-key.nvim",
  cmd = "WhichKey",
  lazy = false,
  opts = {
    preset = "modern",
    delay = 600,
    triggers = {
      { "<auto>", mode = "nixsotc" },
      { "a", mode = { "n", "v" } },
    },
    win = {
      width = 80,
    },
  },
}
