-- Easy Eyes NeOVIM Theme (matching VS Code)
vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.o.termguicolors = true
vim.g.colors_name = "easy-eyes"

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Easy Eyes color palette from VS Code theme
local c = {
  bg = "#1e1e1e",
  bg_alt = "#262626",
  bg_highlight = "#2d2a1f",
  fg = "#ccc9c0",
  fg_bright = "#fffae9",
  
  comment = "#6A9955",
  string = "#CE9178",
  number = "#B5CEA8",
  keyword = "#569CD6",
  control_keyword = "#e664f7",
  operator = "#f200ff",
  function_name = "#DCDCAA",
  function_call = "#DED157",
  type = "#00d885",
  type_builtin = "#4EC9B0",
  variable = "#9CDCFE",
  variable_special = "#D7D5FF",
  constant = "#4FC1FF",
  property = "#b790ff",
  parameter = "#8be4d8",
  
  cyan = "#9CDCFE",
  blue = "#569CD6",
  yellow = "#D7BA7D",
  red = "#F44747",
  
  diag_error = "#f47171",
  diag_warn = "#cca700",
  diag_info = "#75beff",
  diag_hint = "#6A9955",
  
  selection = "#4a4520",
  cursor_line = "#2a2820",
  line_nr = "#a2905e",
  line_nr_active = "#79dca5",
  border = "#3d3a2a",
}

----------------
-- UI
----------------
hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.bg_alt })
hl("CursorLine", { bg = c.cursor_line })
hl("LineNr", { fg = c.line_nr })
hl("CursorLineNr", { fg = c.line_nr_active })
hl("VertSplit", { fg = c.border })
hl("WinSeparator", { fg = c.border })
hl("Visual", { bg = c.selection })
hl("Search", { bg = "#515c6a" })
hl("IncSearch", { bg = "#ea5c00" })
hl("Pmenu", { fg = c.fg, bg = c.bg })
hl("PmenuSel", { fg = c.fg_bright, bg = c.bg_highlight })
hl("StatusLine", { fg = c.fg, bg = c.bg })
hl("StatusLineNC", { fg = c.fg, bg = c.bg })
hl("TabLine", { fg = c.fg, bg = c.bg })
hl("TabLineSel", { fg = c.fg_bright, bg = c.bg_highlight })

----------------
-- Syntax
----------------
hl("Comment", { fg = c.comment, italic = true })
hl("String", { fg = c.string })
hl("Character", { fg = c.string })
hl("Number", { fg = c.number })
hl("Boolean", { fg = c.keyword })
hl("Float", { fg = c.number })

hl("Function", { fg = c.function_name, italic = true })
hl("Keyword", { fg = c.keyword })
hl("Conditional", { fg = c.control_keyword })
hl("Repeat", { fg = c.control_keyword })
hl("Label", { fg = c.control_keyword })
hl("Operator", { fg = c.operator })
hl("Exception", { fg = c.control_keyword })

hl("Type", { fg = c.type })
hl("StorageClass", { fg = c.keyword })
hl("Structure", { fg = c.keyword })
hl("Typedef", { fg = c.keyword })

hl("Identifier", { fg = c.variable })
hl("Constant", { fg = c.constant })
hl("PreProc", { fg = c.keyword })
hl("Include", { fg = c.keyword })
hl("Define", { fg = c.keyword })
hl("Macro", { fg = c.keyword })
hl("PreCondit", { fg = c.keyword })

hl("Special", { fg = c.yellow })
hl("SpecialChar", { fg = c.yellow })
hl("Tag", { fg = c.blue })
hl("Delimiter", { fg = c.fg })
hl("SpecialComment", { fg = c.comment })
hl("Debug", { fg = c.red })

----------------
-- Treesitter
----------------
hl("@comment", { link = "Comment" })
hl("@string", { link = "String" })
hl("@number", { link = "Number" })
hl("@boolean", { link = "Boolean" })
hl("@float", { link = "Float" })

hl("@function", { fg = c.function_name, italic = true })
hl("@function.call", { fg = c.function_call, italic = true })
hl("@function.builtin", { fg = c.function_name })
hl("@method", { fg = c.function_call, italic = true })
hl("@method.call", { fg = c.function_call, italic = true })

hl("@keyword", { link = "Keyword" })
hl("@keyword.function", { link = "Keyword" })
hl("@keyword.operator", { link = "Keyword" })
hl("@keyword.return", { fg = c.control_keyword })
hl("@conditional", { fg = c.control_keyword })
hl("@repeat", { fg = c.control_keyword })
hl("@exception", { fg = c.control_keyword })

hl("@operator", { fg = c.operator })

hl("@variable", { fg = c.variable_special, italic = true })
hl("@variable.builtin", { fg = c.keyword })
hl("@parameter", { fg = c.parameter, italic = true })

hl("@type", { fg = c.type })
hl("@type.builtin", { fg = c.type_builtin })
hl("@type.definition", { fg = c.type })

hl("@property", { fg = c.property, italic = true })
hl("@field", { fg = c.property, italic = true })

hl("@constant", { link = "Constant" })
hl("@constant.builtin", { link = "Constant" })

hl("@namespace", { fg = "#51b7a3" })
hl("@constructor", { fg = c.type })
hl("@tag", { fg = c.blue })
hl("@tag.attribute", { fg = c.cyan })
hl("@tag.delimiter", { fg = "#808080" })

----------------
-- Diagnostics (LSP)
----------------
hl("DiagnosticError", { fg = c.diag_error })
hl("DiagnosticWarn", { fg = c.diag_warn })
hl("DiagnosticInfo", { fg = c.diag_info })
hl("DiagnosticHint", { fg = c.diag_hint })

hl("DiagnosticVirtualTextError", { fg = c.diag_error })
hl("DiagnosticVirtualTextWarn", { fg = c.diag_warn })
hl("DiagnosticVirtualTextInfo", { fg = c.diag_info })
hl("DiagnosticVirtualTextHint", { fg = c.diag_hint })

hl("DiagnosticUnderlineError", { undercurl = true, sp = c.diag_error })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.diag_warn })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.diag_info })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.diag_hint })

----------------
-- Git
----------------
hl("DiffAdd", { fg = "#81b88b" })
hl("DiffDelete", { fg = "#c74e39" })
hl("DiffChange", { fg = "#e2c08d" })
hl("GitSignsAdd", { fg = "#81b88b" })
hl("GitSignsDelete", { fg = "#c74e39" })
hl("GitSignsChange", { fg = "#e2c08d" })

----------------
-- Telescope
----------------
hl("TelescopeBorder", { fg = c.border, bg = c.bg })
hl("TelescopeNormal", { fg = c.fg, bg = c.bg })
hl("TelescopeSelection", { fg = c.fg_bright, bg = c.bg_highlight })
hl("TelescopeSelectionCaret", { fg = c.fg_bright, bg = c.bg_highlight })
hl("TelescopeMultiSelection", { fg = c.cyan, bg = c.bg_highlight })
hl("TelescopeMatching", { fg = c.yellow, bold = true })
hl("TelescopePromptPrefix", { fg = c.blue })
hl("TelescopePromptNormal", { fg = c.fg, bg = c.bg_alt })
hl("TelescopePromptBorder", { fg = c.border, bg = c.bg_alt })
hl("TelescopePromptTitle", { fg = c.fg_bright, bg = c.bg_alt })
hl("TelescopeResultsNormal", { fg = c.fg, bg = c.bg })
hl("TelescopeResultsBorder", { fg = c.border, bg = c.bg })
hl("TelescopeResultsTitle", { fg = c.fg_bright, bg = c.bg })
hl("TelescopePreviewNormal", { fg = c.fg, bg = c.bg })
hl("TelescopePreviewBorder", { fg = c.border, bg = c.bg })
hl("TelescopePreviewTitle", { fg = c.fg_bright, bg = c.bg })

----------------
-- Nvim-Tree / Neo-Tree
----------------
hl("NvimTreeNormal", { fg = c.fg, bg = c.bg })
hl("NvimTreeNormalNC", { fg = c.fg, bg = c.bg })
hl("NvimTreeRootFolder", { fg = c.fg_bright, bold = true })
hl("NvimTreeFolderName", { fg = c.cyan })
hl("NvimTreeFolderIcon", { fg = c.blue })
hl("NvimTreeEmptyFolderName", { fg = c.cyan })
hl("NvimTreeOpenedFolderName", { fg = c.cyan, bold = true })
hl("NvimTreeSymlink", { fg = c.yellow })
hl("NvimTreeExecFile", { fg = "#81b88b", bold = true })
hl("NvimTreeOpenedFile", { fg = c.fg_bright })
hl("NvimTreeSpecialFile", { fg = c.yellow })
hl("NvimTreeImageFile", { fg = c.property })
hl("NvimTreeIndentMarker", { fg = c.border })
hl("NvimTreeGitDirty", { fg = "#e2c08d" })
hl("NvimTreeGitStaged", { fg = "#81b88b" })
hl("NvimTreeGitMerge", { fg = c.diag_warn })
hl("NvimTreeGitRenamed", { fg = c.yellow })
hl("NvimTreeGitNew", { fg = "#81b88b" })
hl("NvimTreeGitDeleted", { fg = "#c74e39" })

-- Neo-tree
hl("NeoTreeNormal", { fg = c.fg, bg = c.bg })
hl("NeoTreeNormalNC", { fg = c.fg, bg = c.bg })
hl("NeoTreeRootName", { fg = c.fg_bright, bold = true })
hl("NeoTreeDirectoryName", { fg = c.cyan })
hl("NeoTreeDirectoryIcon", { fg = c.blue })
hl("NeoTreeFileName", { fg = c.fg })
hl("NeoTreeFileIcon", { fg = c.fg })
hl("NeoTreeFileNameOpened", { fg = c.fg_bright })
hl("NeoTreeIndentMarker", { fg = c.border })
hl("NeoTreeGitAdded", { fg = "#81b88b" })
hl("NeoTreeGitDeleted", { fg = "#c74e39" })
hl("NeoTreeGitModified", { fg = "#e2c08d" })
hl("NeoTreeGitConflict", { fg = c.diag_error })
hl("NeoTreeGitUntracked", { fg = "#73c991" })
hl("NeoTreeSymbolicLinkTarget", { fg = c.yellow })

----------------
-- Netrw (builtin file explorer :Ex)
----------------
hl("netrwDir", { fg = c.cyan, bold = true })
hl("netrwClassify", { fg = c.blue })
hl("netrwLink", { fg = c.yellow })
hl("netrwSymLink", { fg = c.yellow })
hl("netrwExe", { fg = "#81b88b", bold = true })
hl("netrwComment", { fg = c.comment, italic = true })
hl("netrwList", { fg = c.fg })
hl("netrwHelpCmd", { fg = c.blue })
hl("netrwCmdSep", { fg = c.border })
hl("netrwVersion", { fg = c.diag_info })
hl("netrwTreeBar", { fg = c.border })
hl("netrwMarkFile", { fg = c.fg_bright, bg = c.bg_highlight })
