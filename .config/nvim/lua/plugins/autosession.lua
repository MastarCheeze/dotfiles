-- save sessions when nvim is closed and reopen them when nvim starts
return {
  "rmagatti/auto-session",
  lazy = false,
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    session_lens = { load_on_setup = false },
    suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
  },
}
