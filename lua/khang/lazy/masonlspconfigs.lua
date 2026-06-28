return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
        "saghen/blink.cmp",
    },
    opts = {
        -- Servers Mason installs; automatic_enable (default true) attaches them.
        -- Add more as needed, e.g. "gopls", "pyright", "elixirls".
        ensure_installed = { "lua_ls", "ts_ls" },
    },
    config = function(_, opts)
        -- Broadcast blink.cmp completion capabilities to every LSP server (0.11 API).
        vim.lsp.config('*', {
            capabilities = require('blink.cmp').get_lsp_capabilities(),
        })

        -- Stop lua_ls from flagging the global `vim`.
        vim.lsp.config('lua_ls', {
            settings = { Lua = { diagnostics = { globals = { 'vim' } } } },
        })

        require('mason-lspconfig').setup(opts)
    end,
}
