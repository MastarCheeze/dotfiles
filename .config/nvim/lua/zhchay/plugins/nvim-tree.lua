return {
  "nvim-tree/nvim-tree.lua",
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  
  config = function()
    local nvim_tree = require("nvim-tree")
    nvim_tree.setup({
      view = {
        side = "right",
        width = 40,
        preserve_window_proportions = true,
        -- relativenumber = true,
      },
      filters = {
        dotfiles = false,
        custom = { ".DS_Store" },
      },
      disable_netrw = true,
      hijack_cursor = true,
      sync_root_with_cwd = true,
      update_focused_file = {
        enable = true,
      },
      renderer = {
        root_folder_label = ":t:r", -- basename of the root directory 
        indent_markers = { enable = true },
        highlight_git = "name",
        icons = {
          git_placement = "right_align",
          diagnostics_placement = "after",
          glyphs = {
            git = {
              unstaged = "󱈸",
              staged = "󱇬",
              unmerged = "",
              renamed = "➜",
              untracked = "",
              deleted = "󱘹",
              ignored = "",
            },
          },
        },
      },
      modified = {
        enable = true,
        show_on_open_dirs = false,
      },
      git = {
        enable = true,
        show_on_open_dirs = false,
      },
      diagnostics = {
        enable = true,
        show_on_open_dirs = false,
        icons = {
          hint = "󰌶",
          info = "󰋽",
          warning = "󰀪",
          error = "󰅚",
        },
      },
    })
  end,

  init = function() 
    local map = vim.keymap.set

    map("n", "<leader>e", function()  
      local api = require("nvim-tree.api")
      if api.tree.is_tree_buf() then
        api.tree.close()
      else
        api.tree.focus()
      end
    end, { desc = "Toggle file explorer" }) 
  end,
}
