return {
  "navarasu/onedark.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[ colorscheme onedark ]])

    local c = require("onedark.colors")
    require("onedark").setup({
      style = "darker",
      colors = {
        bg0 = "#14161A",
        bg1 = "#282D33",
        bg2 = "#252A31",
        bg3 = "#282B34",
        bg_d = "#16191D",
        fg = "#CBCFD7",
        cyan = "#88DCE7",
        yellow = "#EFDA81",
        grey = "#40454E",
      },
      highlights = {
        CursorLineNr = { fmt = "bold" },
      },
    })
    require("onedark").load()
  end,
}

