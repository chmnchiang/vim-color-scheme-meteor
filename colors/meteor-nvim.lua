-- PATCH_OPEN
-- Generated by lush builder on Sat 05 Feb 2022 07:21:56 PM PST
--
-- You can configure how this build function operates by passing in optional
-- function handlers via the options table.
--
-- See each default handler below for guidance on writing your own.
--
-- {
--   configure_group_fn = function(group) ... end,
--   generate_group_fn = function(group) .. end,
--   before_apply_fn = function(rules) ... end,
--   apply_fn = function(rules) ... end,
-- }
local lush_groups = {
    {name = "LineNr", type = "group", data = {fg = "#6A6A6A", bg = "#262626", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "DiffSignAdd", type = "group", data = {fg = "#00AB0B", bg = "#262626", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "DiagnosticNumError", type = "group", data = {fg = "NONE", bg = "#860002", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Pmenu", type = "group", data = {fg = "#E2E2E2", bg = "#4C3727", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "PmenuSel", type = "group", data = {fg = "#E2E2E2", bg = "#775841", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "SignifySignAdd",type = "link", data = {to = "DiffSignAdd"}},
    {name = "VertSplit", type = "group", data = {fg = "#AAAA55", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "FloatBorder", type = "group", data = {fg = "#8A7262", bg = "#392E27", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "FoldColumn", type = "group", data = {fg = "#5FD7FF", bg = "#1B1B1B", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "TabLine", type = "group", data = {fg = "#989898", bg = "#282828", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Directory", type = "group", data = {fg = "#00AFFF", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "MatchParen", type = "group", data = {fg = "NONE", bg = "#575757", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "DiagnosticNumWarn", type = "group", data = {fg = "NONE", bg = "#B06000", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Identifier",type = "link", data = {to = "Normal"}},
    {name = "TSVariableBuiltin", type = "group", data = {fg = "#E991B0", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Question", type = "group", data = {fg = "#D6AF00", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Operator", type = "group", data = {fg = "#97F2F0", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "DapBreakpoint", type = "group", data = {fg = "#FE0008", bg = "#262626", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "ModeMsg", type = "group", data = {fg = "#D6AF00", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Cursor", type = "group", data = {fg = "NONE", bg = "#FFFFFF", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "TabLineSel", type = "group", data = {fg = "#E2E2E2", bg = "#4E4E4E", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "IndentGuidesOdd", type = "group", data = {fg = "#474747", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "IncSearch", type = "group", data = {fg = "#FEFF00", bg = "#008806", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "WarningMsg", type = "group", data = {fg = "#E5E5E5", bg = "#D86000", sp = "NONE", gui = "bold", blend = "NONE"}},
    {name = "DiffDelete", type = "group", data = {fg = "#F9A1A1", bg = "#5C0001", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "StatusLine", type = "group", data = {fg = "#919191", bg = "#3B3B3B", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "DiagnosticSignError", type = "group", data = {fg = "#D80005", bg = "#262626", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "DiffSignDelete", type = "group", data = {fg = "#FF282A", bg = "#262626", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Visual", type = "group", data = {fg = "NONE", bg = "#404040", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "TabLineFill", type = "group", data = {fg = "NONE", bg = "#262626", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "DiagnosticSignHint",type = "link", data = {to = "DiagnosticSignInfo"}},
    {name = "ErrorMsg", type = "group", data = {fg = "#E2E2E2", bg = "#AE0003", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "DiagnosticFloatingWarn",type = "link", data = {to = "NormalFloat"}},
    {name = "TSNamespace",type = "link", data = {to = "Identifier"}},
    {name = "SignColumn",type = "link", data = {to = "LineNr"}},
    {name = "IndentGuidesEven", type = "group", data = {fg = "#5E5E5E", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "GitGutterChange",type = "link", data = {to = "DiffSignChange"}},
    {name = "TSFuncBuiltin",type = "link", data = {to = "Operator"}},
    {name = "TSConstBuiltin",type = "link", data = {to = "Constant"}},
    {name = "Statement", type = "group", data = {fg = "#699EF6", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Float",type = "link", data = {to = "Number"}},
    {name = "Title", type = "group", data = {fg = "#D6AF00", bg = "NONE", sp = "NONE", gui = "bold", blend = "NONE"}},
    {name = "DapStoppedLine", type = "group", data = {fg = "NONE", bg = "#254222", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "SpellCap", type = "group", data = {fg = "NONE", bg = "NONE", sp = "#eecc00", gui = "undercurl", blend = "NONE"}},
    {name = "DapBreakpointRejected", type = "group", data = {fg = "#ABABAB", bg = "#262626", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "DiffText", type = "group", data = {fg = "#75D9D9", bg = "#005F5F", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Comment", type = "group", data = {fg = "#848484", bg = "NONE", sp = "NONE", gui = "italic", blend = "NONE"}},
    {name = "DapLogPoint", type = "group", data = {fg = "#429EBE", bg = "#262626", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "GitGutterDelete",type = "link", data = {to = "DiffSignDelete"}},
    {name = "Normal", type = "group", data = {fg = "#E2E2E2", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "DapBreakpointCondition", type = "group", data = {fg = "#FF5717", bg = "#262626", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "helpHyperTextJump", type = "group", data = {fg = "#7FAFFF", bg = "NONE", sp = "NONE", gui = "underline", blend = "NONE"}},
    {name = "PmenuSbar", type = "group", data = {fg = "NONE", bg = "#616161", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Type", type = "group", data = {fg = "#F8DC64", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "CursorIM",type = "link", data = {to = "Cursor"}},
    {name = "DiagnosticFloatingHint",type = "link", data = {to = "NormalFloat"}},
    {name = "DiffChange", type = "group", data = {fg = "#C6C6EF", bg = "#00003C", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "VisualNOS", type = "group", data = {fg = "NONE", bg = "#404040", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "DiagnosticFloatingInfo",type = "link", data = {to = "NormalFloat"}},
    {name = "CursorLineNr", type = "group", data = {fg = "#BFBF00", bg = "#1B291A", sp = "NONE", gui = "bold", blend = "NONE"}},
    {name = "DiagnosticFloatingError",type = "link", data = {to = "NormalFloat"}},
    {name = "SpellBad", type = "group", data = {fg = "NONE", bg = "NONE", sp = "#ff0000", gui = "undercurl", blend = "NONE"}},
    {name = "GitGutterAdd",type = "link", data = {to = "DiffSignAdd"}},
    {name = "Function",type = "link", data = {to = "Normal"}},
    {name = "StatusLineNC", type = "group", data = {fg = "#5E5E5E", bg = "#1B1B1B", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "DiffSignChange", type = "group", data = {fg = "#CDCD20", bg = "#262626", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "DiagnosticSignInfo", type = "group", data = {fg = "#5FD7FF", bg = "#262626", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "DiagnosticSignWarn", type = "group", data = {fg = "#FE8500", bg = "#262626", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Folded", type = "group", data = {fg = "#5FD7FF", bg = "#00003C", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Special", type = "group", data = {fg = "#D75C86", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Character", type = "group", data = {fg = "#FBBC3F", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Delimiter", type = "group", data = {fg = "#ABABAB", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "SpellRare",type = "link", data = {to = "SpellCap"}},
    {name = "SpellLocal",type = "link", data = {to = "SpellCap"}},
    {name = "DapStopped", type = "group", data = {fg = "#FFFFFF", bg = "#262626", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "DiagnosticNumHint",type = "link", data = {to = "DiagnosticNumInfo"}},
    {name = "Todo", type = "group", data = {fg = "#E0B700", bg = "NONE", sp = "NONE", gui = "bold", blend = "NONE"}},
    {name = "Error", type = "group", data = {fg = "#E2E2E2", bg = "#8F0002", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "MoreMsg", type = "group", data = {fg = "#D6AF00", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "SignifySignDelete",type = "link", data = {to = "DiffSignDelete"}},
    {name = "TSConstructor",type = "link", data = {to = "Operator"}},
    {name = "ColorColumn", type = "group", data = {fg = "NONE", bg = "#575757", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "String", type = "group", data = {fg = "#F29274", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "SpecialKey", type = "group", data = {fg = "#D75C86", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "NormalFloat", type = "group", data = {fg = "#E2E2E2", bg = "#392E27", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Search", type = "group", data = {fg = "#FEFF00", bg = "#575757", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "SignifySignChange",type = "link", data = {to = "DiffSignChange"}},
    {name = "DiffAdd", type = "group", data = {fg = "#6CDE6D", bg = "#005B03", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "CursorLine", type = "group", data = {fg = "NONE", bg = "#1B1B1B", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "NonText", type = "group", data = {fg = "#D75C86", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Constant", type = "group", data = {fg = "#F59DD4", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "PmenuThumb", type = "group", data = {fg = "NONE", bg = "#CCCCCC", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Boolean",type = "link", data = {to = "Constant"}},
    {name = "Number", type = "group", data = {fg = "#CC92FF", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "DiagnosticNumInfo", type = "group", data = {fg = "NONE", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
    {name = "Exception", type = "group", data = {fg = "#3491FF", bg = "NONE", sp = "NONE", gui = "bold", blend = "NONE"}},
    {name = "PreProc", type = "group", data = {fg = "#96D93E", bg = "NONE", sp = "NONE", gui = "NONE", blend = "NONE"}},
}
local lush_apply = function(groups, opts)
  -- we may not always get given any options, so act safely
  local options = opts or {}
  -- configure_group(group) -> group
  --
  -- Accepts a group table (group.name, group.type (link or group) and
  -- group.data (table of fg, bg, gui, sp and blend)). Should return the group
  -- data with any desired alterations.
  --
  -- By default we make no modifications.
  local configure_group = options.configure_group_fn or
    function(group)
      -- by default don't modify anything
      return group
    end
  -- generate_group(group) -> any
  --
  -- Accepts a group table (group.name, group.type (link or group) and
  -- group.data (table of fg, bg, gui, sp and blend)). Should return something
  -- which apply() knows how to handle.
  --
  -- By default we generate a vimscript highlight rule.
  local generate_group = options.generate_group_fn or
    function(group)
      if group.type == "link" then
        return string.format("highlight! link %s %s", group.name, group.data.to)
      elseif group.type == "group" then
        return string.format("highlight! %s guifg=%s guibg=%s guisp=%s gui=%s blend=%s",
          group.name,
          group.data.fg, group.data.bg, group.data.sp, group.data.gui, group.data.blend)
      else
        error("unknown group type: " .. group.type .. " for group " .. group.name)
      end
    end
  -- before_apply(any) -> any
  --
  -- Accepts a list of each group's result from generate_group_fn. Should
  -- return something apply_fn can understand.
  --
  -- By default, generate_group_fn returns a vimscript "highlight ..." command and
  -- apply_fn assumes it's recieving a list of commands to pass to vim.cmd, but
  -- you could for example, return a table of functions here and the apply_fn
  -- could call those functions.
  local before_apply = options.before_apply_fn or function(rules)
    -- just add the hi clear call
    table.insert(rules, 1, "highlight clear")
    return rules
  end
  -- apply(any) -> any
  --
  -- Accepts a list of something and does something with it.
  --
  -- By default we assume generate_group_fn has created a highlight
  -- rule for each group and we can simply pass those on to the vim
  -- interpreter.
  local apply = options.apply_fn or
    function(rules)
      -- just send all the rules through to vim
      for _, cmd in ipairs(rules) do
        vim.api.nvim_command(cmd)
      end
    end
  local rules = {}
  for _, group in ipairs(groups) do
    group = configure_group(group)
    table.insert(rules, generate_group(group))
  end
  rules = before_apply(rules)
  return apply(rules)
end
-- PATCH_CLOSE

lush_apply(lush_groups)
