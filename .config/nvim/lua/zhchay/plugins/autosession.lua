return {
  "rmagatti/auto-session",
  cmd = { "SessionRestore", "SessionSearch" },
  event = { "ExitPre" },
  opts = {
    auto_restore = false,
    session_lens = { load_on_setup = false },
    suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
  },
}

