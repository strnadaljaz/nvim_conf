local function add_unique(list, items)
  for _, item in ipairs(items) do
    if not vim.tbl_contains(list, item) then
      table.insert(list, item)
    end
  end
end

return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--query-driver=/usr/bin/clang++,/usr/bin/g++,/usr/bin/c++,/usr/bin/*g++,/usr/bin/*clang++",
          },
        },
        ts_ls = {},
        pyright = {},
        html = {},
        cssls = {},
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      add_unique(opts.ensure_installed, {
        "clangd",
        "clang-format",
        "typescript-language-server",
        "pyright",
        "html-lsp",
        "css-lsp",
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      add_unique(opts.ensure_installed, {
        "c",
        "cpp",
        "javascript",
        "typescript",
        "tsx",
        "python",
        "html",
        "css",
      })
    end,
  },
}
