return {
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({
        check_ts = true,  -- enable treesitter integration
        fast_wrap = {},   -- optional: enable fast wrapping with mappings
      })
    end,
  },
}
