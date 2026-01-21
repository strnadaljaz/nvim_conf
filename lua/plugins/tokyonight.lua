return {
  "folke/tokyonight.nvim",
  lazy = false, -- load immediately so colorscheme applies on startup
  priority = 1000, -- make sure it loads before other UI plugins
  config = function()
    require("tokyonight").setup({
      style = "storm", -- storm | night | moon | day
      transparent = false,
      terminal_colors = true,

      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "dark",
        floats = "dark",
      },

      dim_inactive = false,
      lualine_bold = true,

      on_highlights = function(hl, c)
        -- Make diagnostics a bit cleaner
        hl.DiagnosticVirtualTextError = { fg = c.red, italic = true }
        hl.DiagnosticVirtualTextWarn  = { fg = c.yellow, italic = true }
        hl.DiagnosticVirtualTextInfo  = { fg = c.blue, italic = true }
        hl.DiagnosticVirtualTextHint  = { fg = c.teal, italic = true }

        -- Gitsigns
        hl.GitSignsAdd    = { fg = c.green }
        hl.GitSignsChange = { fg = c.yellow }
        hl.GitSignsDelete = { fg = c.red }
      end,
    })

    -- Apply colorscheme
    vim.cmd("colorscheme tokyonight")
  end,
}

