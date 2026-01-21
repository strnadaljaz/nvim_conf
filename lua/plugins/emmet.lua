return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- Ensure Emmet language server is installed
    require("mason-lspconfig").setup({
      ensure_installed = { "emmet_ls" },
    })

    -- Setup Emmet LSP
    require("lspconfig").emmet_ls.setup({
      filetypes = {
        "html",
        "css",
        "scss",
        "javascriptreact",
        "typescriptreact",
        "vue",
        "svelte",
      },
      init_options = {
        html = {
          options = {
            ["bem.enabled"] = true,
          },
        },
      },
    })
  end,
}

