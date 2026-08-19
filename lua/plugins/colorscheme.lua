return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      options = {
        transparent = false,
      },
      palettes = {
        carbonfox = {
          bg1 = "#000000",
          bg0 = "#000000",
        },
      },
    },
    config = function(_, opts)
      require("nightfox").setup(opts)
      vim.cmd.colorscheme("carbonfox")
    end,
  },
}
