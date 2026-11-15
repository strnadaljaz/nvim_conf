return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      for _, section in pairs(opts.sections) do
        for i = #section, 1, -1 do
          local component = section[i]

          if component == "diagnostics" or (type(component) == "table" and component[1] == "diagnostics") then
            table.remove(section, i)
          end
        end
      end
    end,
  },
}
