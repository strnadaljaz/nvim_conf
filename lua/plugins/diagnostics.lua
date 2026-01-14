return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup({})
            
            -- Configure diagnostics display
            vim.diagnostic.config({
                -- Show diagnostics as virtual text at end of line
                virtual_text = {
                    prefix = "●",
                    spacing = 4,
                },
                -- Show diagnostics in a floating window on hover
                float = {
                    border = "rounded",
                    source = "always",
                    header = "",
                    prefix = "",
                },
                -- Underline errors/warnings
                underline = true,
                -- Show severity (Error, Warning, Info, Hint)
                severity_sort = true,
                -- Update diagnostics on text change
                update_in_insert = false,
            })
            
            -- Setup signs (symbols on the left gutter)
            local signs = { Error = "✘", Warn = "▲", Hint = "⚡", Info = "ℹ" }
            for type, icon in pairs(signs) do
                local hl = "DiagnosticSign" .. type
                vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
            end
        end,
    },
}
