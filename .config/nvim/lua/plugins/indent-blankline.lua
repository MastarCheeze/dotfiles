-- editor indent guides
return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = { "BufNew" },
  opts = {
    scope = { show_start = false, show_end = false },
  },
}
