local function add_unique(list, items)
  for _, item in ipairs(items) do
    if not vim.tbl_contains(list, item) then
      table.insert(list, item)
    end
  end
end

local function get_cpp_fallback_flags()
  local flags = { "-std=c++20" }
  local sdk_includes = vim.fn.glob("/var/lib/flatpak/runtime/org.freedesktop.Sdk/x86_64/*/*/files/include/c++/*", false, true)
  table.sort(sdk_includes)

  for i = #sdk_includes, 1, -1 do
    local include_root = sdk_includes[i]
    if vim.fn.filereadable(include_root .. "/iostream") == 1 then
      table.insert(flags, "-isystem")
      table.insert(flags, include_root)

      local arch_include = include_root .. "/x86_64-unknown-linux-gnu"
      if vim.fn.isdirectory(arch_include) == 1 then
        table.insert(flags, "-isystem")
        table.insert(flags, arch_include)
      end
      break
    end
  end

  return flags
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
          init_options = {
            fallbackFlags = get_cpp_fallback_flags(),
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
    "williamboman/mason.nvim",
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
