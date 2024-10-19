-- tab buffer to view opened files
return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local bl = require("bufferline")
    bl.setup({
      options = {
        indicator = {
          style = "none",
        },
        separator_style = { "|", "|" },
        style_preset = bl.style_preset.no_italic,
        offsets = {
          {
            filetype = "NvimTree",
            text = vim.fs.basename(vim.fn.getcwd()),
            highlight = "Directory",
            separator = true,
          },
        },
      },
    })
  end,
}
