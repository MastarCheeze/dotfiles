-- status bar
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      theme = "onedark",
      globalstatus = true,
      section_separators = "",
      component_separators = "│",
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff", "diagnostics" },
      lualine_c = { "filename" },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    tabline = {
      lualine_b = {
        {
          "buffers",
          max_length = vim.o.columns,
          symbols = { alternate_file = "" },
        },
      },
    },
  },
}
