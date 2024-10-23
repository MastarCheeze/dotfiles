-- save sessions when nvim is closed and reopen them when nvim starts
return {
  "rmagatti/auto-session",
  cmd = { "SessionRestore", "SessionSearch" },
  opts = {
    auto_restore = false,
    session_lens = { load_on_setup = false },
    suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
  },
}
