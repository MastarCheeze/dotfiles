-- theme
return {
  "navarasu/onedark.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[ colorscheme onedark ]])

    local c = require("onedark.colors")
    require("onedark").setup({
      style = "deep",
      highlights = {
        CursorLineNr = { fmt = "bold" },
      },
    })
    require("onedark").load()
  end,
}
