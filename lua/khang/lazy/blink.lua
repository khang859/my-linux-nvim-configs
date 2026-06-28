return {
  "saghen/blink.cmp",
  version = "1.*", -- stable; ships a prebuilt fuzzy-matcher binary (no Rust toolchain needed)
  dependencies = {
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets",
  },
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- 'enter' => <CR> accepts, matching the old nvim-cmp habit.
    -- All presets also keep: C-space (menu/docs), C-n/C-p (next/prev), C-e (hide), C-k (signature).
    keymap = { preset = "enter" },
    snippets = { preset = "luasnip" },
    sources = { default = { "lsp", "path", "snippets", "buffer" } },
    completion = { documentation = { auto_show = true } },
    -- Rust matcher when the prebuilt binary is present, else falls back to the Lua impl.
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}
