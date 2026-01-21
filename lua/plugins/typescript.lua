return {
  "neovim/nvim-lspconfig",
  dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
  config = function()
    -- Ensure TS LSP is installed
    require("mason-lspconfig").setup({
      ensure_installed = { "ts_ls", "eslint" },
    })

    -- Setup tsserver
    require("lspconfig").ts_ls.setup({
      on_attach = function(client, bufnr)
        -- Keymaps for diagnostics (optional)
        local opts = { noremap=true, silent=true, buffer=bufnr }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

        -- Enable diagnostics signs/virtual text
        vim.diagnostic.config({
          virtual_text = {
            prefix = "●",
            spacing = 2,
          },
          signs = true,
          underline = true,
          update_in_insert = false,
        })
      end,
    })
  end,
}


