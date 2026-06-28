return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = { enabled = true }, -- replaces dashboard-nvim
    indent = { enabled = true },    -- indent guides
    notifier = { enabled = true },  -- pretty notifications
    input = { enabled = true },     -- better vim.ui.input
  },
}
