return {
  -- {
  --   "EdenEast/nightfox.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     options = {
  --       transparent = false,
  --     },
  --     palettes = {
  --       carbonfox = {},
  --     },
  --   },
  --   config = function(_, opts)
  --     require("nightfox").setup(opts)
  --     vim.cmd.colorscheme("nightfox")
  --   end,
  -- },
  {
    "webhooked/kanso.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
    config = function(_, opts)
      require("kanso").setup(opts)
      vim.cmd.colorscheme("kanso-zen")
    end,
  },
}
