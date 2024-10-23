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
  },
}
