return {
    {
        "williamboman/mason.nvim",
        opts = {}
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {"clangd"},
        }
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup({})
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",  -- LSP source for nvim-cmp
            "hrsh7th/cmp-buffer",     -- buffer source
            "hrsh7th/cmp-path",       -- path source
            "L3MON4D3/LuaSnip",       -- snippet engine
            "saadparwaiz1/cmp_luasnip", -- snippet source
        },
        config = function()
            local cmp = require("cmp")
            
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping. scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping. complete(),
                    ["<C-e>"] = cmp. mapping.abort(),
                    ["<CR>"] = cmp. mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                }, {
                    { name = "buffer" },
                    { name = "path" },
                }),
            })
        end,
    },
    {
        "L3MON4D3/LuaSnip",
        build = "make install_jsregexp",
    },
}
