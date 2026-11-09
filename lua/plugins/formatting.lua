return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        c = { "clang-format" },
        cpp = { "clang-format" },
      },
      formatters = {
        ["clang-format"] = {
          prepend_args = {
            "--style={IndentWidth: 2, TabWidth: 2, UseTab: Never, SortIncludes: true}",
          },
        },
      },
    },
  },
}
