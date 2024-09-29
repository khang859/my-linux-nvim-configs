return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({})
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    map("n", "<leader>t", ":ToggleTerm<CR>", opts)
    map("n", "<leader>tf", ":ToggleTerm direction=float<CR>", opts)
  end,
}
