-- file explorer
return {
  "nvim-tree/nvim-tree.lua",
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  opts = {
    filters = { dotfiles = false },
    disable_netrw = true,
    hijack_cursor = true,
    sync_root_with_cwd = true,
    update_focused_file = {
      enable = true,
      update_root = false,
    },
    view = {
      side = "right",
      width = 40,
      preserve_window_proportions = true,
    },
    renderer = {
      root_folder_label = ":t:r",
      indent_markers = { enable = true },
      highlight_git = "name",
      icons = {
        git_placement = "right_align",
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
    git = {
      show_on_open_dirs = false,
    },
    modified = {
      enable = true,
    },
  },
}
