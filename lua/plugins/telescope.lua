-- Minimal Telescope setup for project-wide file search
return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")
    telescope.setup({})

    -- Keymaps
    vim.keymap.set("n", "<C-p>", require("telescope.builtin").find_files, { desc = "Find files" })
    vim.keymap.set("n", "<C-f>", require("telescope.builtin").live_grep, { desc = "Search text in project" })
  end,
}
