return {
  "navarasu/onedark.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[ colorscheme onedark ]])
    require("onedark").setup({
      style = "deep",
    })
    require("onedark").load()
  end,
}
