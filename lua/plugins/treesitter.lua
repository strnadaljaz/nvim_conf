return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = { "tsx", "typescript", "javascript", "html" },
      highlight = { enable = true, additional_vim_regex_highlighting = false },
    },
    config = function(_, opts)
      local ok, tsconfigs = pcall(require, "nvim-treesitter.configs")
      if not ok then
        return
      end
      tsconfigs.setup(opts)
    end,
  },
}
