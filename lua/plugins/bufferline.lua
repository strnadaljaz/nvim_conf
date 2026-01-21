return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  lazy = false,
  priority = 100,
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        separator_style = "thick",
        always_show_bufferline = true,
        show_buffer_icons = true,
        show_close_icon = true,
        diagnostics = "nvim_lsp",  -- Show errors
        modified_icon = "●",  -- Unsaved file indicator
        max_name_length = 20,
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
          }
        }
      }
    })
  end,
}
