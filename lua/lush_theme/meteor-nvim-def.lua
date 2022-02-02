--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsluv = lush.hsluv

local left_column_bg = hsluv(0, 0, 15)
local strong_fg = hsluv('#d7af00')

local theme = lush(function()
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    Normal       { fg = hsluv(0, 0, 90) }, -- normal text
    SpecialKey   { fg = hsluv('#d75f87') }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    VertSplit    { fg = hsluv('#aaaa55') }, -- the column separating vertically split windows
    NonText      { fg = hsluv('#d75f87') }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Directory    { fg = hsluv('#00afff') }, -- directory names (and other special names in listings)
    Title        { fg = strong_fg, gui = 'bold' }, -- titles for output from ":set all", ":autocmd" etc.

    Cursor       { bg = hsluv('#ffffff') }, -- character under the cursor
    CursorIM     { Cursor }, -- like Cursor, but used when in IME mode |CursorIM|
    MatchParen   { bg = hsluv('#585858') }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    FoldColumn   { bg = hsluv('#1c1c1c'), fg = hsluv('#5fd7ff') }, -- 'foldcolumn'
    Folded       { bg = hsluv('#000040'), fg = hsluv('#5fd7ff') }, -- line used for closed folds

    CursorLine   { bg = hsluv(0, 0, 10) }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    LineNr       { bg = hsluv(0, 0, 15), fg = hsluv(0, 0, 45) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { bg = hsluv(127, 40, 15), fg = hsluv(86, 100, 75), gui = 'bold' }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    SignColumn   { LineNr }, -- column where |signs| are displayed
    StatusLine   { bg = hsluv(0, 0, 25), fg = hsluv(0, 0, 60) }, -- status line of current window
    StatusLineNC { bg = hsluv(0, 0, 10), fg = hsluv(0, 0, 40) }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    ColorColumn  { bg = hsluv('#585858') }, -- used for the columns set with 'colorcolumn'
    ErrorMsg     { bg = hsluv('#af0000'), fg = Normal.fg }, -- error messages on the command line
    Question     { fg = strong_fg }, -- |hit-enter| prompt and yes/no questions
    WarningMsg   { bg = hsluv('#d75f00'), fg = hsluv('#e4e4e4'), gui = 'bold' }, -- warning messages
    MoreMsg      { fg = strong_fg }, -- |more-prompt|
    ModeMsg      { fg = strong_fg }, -- 'showmode' message (e.g., "-- INSERT -- ")

    Search       { bg = hsluv('#585858'), fg = hsluv('#ffff5f') }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch    { bg = hsluv('#008700'), fg = hsluv('#ffff5f') }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting

    DiffAdd      { bg = hsluv('#005c00'), fg = hsluv('#005c00').lighten(70).desaturate(30) }, -- diff mode: Added line |diff.txt|
    DiffDelete   { bg = hsluv('#5c0000'), fg = hsluv('#5c0000').lighten(70).desaturate(10) }, -- diff mode: Deleted line |diff.txt|
    DiffChange   { bg = hsluv('#000040'), fg = hsluv('#000040').lighten(80).desaturate(30) }, -- diff mode: Changed line |diff.txt|
    DiffText     { bg = hsluv('#005f5f'), fg = hsluv('#005f5f').lighten(70).desaturate(30) }, -- diff mode: Changed text within a changed line |diff.txt|
    DiffSignAdd  { bg = SignColumn.bg, fg = hsluv('#00aa00') },
    DiffSignChange { bg = SignColumn.bg, fg = hsluv('#cccc22') },
    DiffSignDelete { bg = SignColumn.bg, fg = hsluv('#ff2222') },
    GitGutterAdd { DiffSignAdd },
    GitGutterChange { DiffSignChange },
    GitGutterDelete { DiffSignDelete },
    SignifySignAdd { DiffSignAdd },
    SignifySignChange { DiffSignChange },
    SignifySignDelete { DiffSignDelete },

    Visual       { bg = hsluv('#404040') }, -- Visual mode selection
    VisualNOS    { bg = hsluv('#404040') }, -- Visual mode selection when vim is "Not Owning the Selection".

    Pmenu        { bg = hsluv(42, 50, 25), fg = Normal.fg }, -- Popup menu: normal item.
    PmenuSel     { bg = hsluv(42, 50, 40), fg = Normal.fg }, -- Popup menu: selected item.
    PmenuSbar    { bg = hsluv('#606060') }, -- Popup menu: scrollbar.
    PmenuThumb   { bg = hsluv('#cccccc') }, -- Popup menu: Thumb of the scrollbar.
    NormalFloat { bg = hsluv(42, 30, 20), fg = Normal.fg }, -- Normal text in floating windows.
    FloatBorder { bg = NormalFloat.bg, fg = hsluv(42, 30, 50) }, -- Border of floating windows.

    TabLine      { bg = hsluv('#282828'), fg = Normal.fg.darken(30) }, -- tab pages line, not active tab page label
    TabLineSel   { bg = hsluv('#282828').lighten(20), fg = Normal.fg }, -- tab pages line, where there are no labels
    TabLineFill  { bg = hsluv('#262626') }, -- tab pages line, active tab page label

    Comment      { fg = hsluv(0, 0, 55), gui = "italic" }, -- any comment

    String      { fg = hsluv(25, 80, 70) }, -- (preferred) any constant
    Constant     { fg = hsluv(330, 85, 75) }, --   a string constant: "this is a string"
    Character     { fg = hsluv(55, 90, 80) }, --  a character constant: 'c', '\n'
    Number         { fg = hsluv(285, 100, 70) }, --   a number constant: 234, 0xff
    --Number         { fg = hsluv(25, 70, 80) }, --   a number constant: 234, 0xff
    Boolean        { Constant }, --  a boolean constant: TRUE, false
    Float          { Number }, --    a floating point constant: 2.3e10

    Identifier     { Normal }, -- (preferred) any variable name
    Function       { Normal }, -- function name (also: methods for classes)

    Statement      { fg = hsluv(253, 90, 65) }, -- (preferred) any statement
    -- Conditional    { Statement }, --  if, then, else, endif, switch, etc.
    -- Repeat         { Statement }, --   for, do, while, etc.
    -- Label          { Statement }, --    case, default, etc.
    Operator       { fg = hsluv(190, 60, 90) }, -- "sizeof", "+", "*", etc.
    -- Keyword        { Statement }, --  any other keyword
    Exception      { fg = hsluv(253, 100, 60), gui = "bold" }, --  try, catch, throw

    PreProc        { fg = hsluv(112, 90, 80) }, -- (preferred) generic Preprocessor
    -- Include        { PreProc }, --  preprocessor #include
    -- Define         { PreProc }, --   preprocessor #define
    -- Macro          { PreProc }, --    same as Define
    -- PreCondit      { PreProc }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = hsluv(72, 80, 88) }, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special        { fg = hsluv('#d75f87')}, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    Delimiter      { fg = hsluv(0, 0, 70) }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    Error          { bg = hsluv('#900000'), fg = Normal.fg }, -- (preferred) any erroneous construct
    Todo           { fg = strong_fg.lighten(10), gui = 'bold' }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    SpellBad     { gui = 'undercurl', sp = '#ff0000' }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap     { gui = 'undercurl', sp = '#eecc00' }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { SpellCap }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { SpellCap }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

    DiagnosticSignError             { bg = SignColumn.bg, fg = hsluv('#d70000') }, -- Used for "Error" signs in sign column
    DiagnosticSignWarn              { bg = SignColumn.bg, fg = hsluv('#ff8700') }, -- Used for "Warning" signs in sign column
    DiagnosticSignInfo              { bg = SignColumn.bg, fg = hsluv('#5fd7ff') }, -- Used for "Information" signs in sign column
    DiagnosticSignHint              { DiagnosticSignInfo }, -- Used for "Hint" signs in sign column

    DiagnosticNumError              { bg = hsluv('#870000') }, -- Used for "Error" signs in sign column
    DiagnosticNumWarn               { bg = hsluv('#af5f00') }, -- Used for "Warning" signs in sign column
    DiagnosticNumInfo               { }, -- Used for "Information" signs in sign column
    DiagnosticNumHint               { DiagnosticNumInfo }, -- Used for "Hint" signs in sign column

    DiagnosticFloatingError         { NormalFloat }, -- Used to color "Error" diagnostic messages in diagnostics float
    DiagnosticFloatingWarn          { NormalFloat }, -- Used to color "Warning" diagnostic messages in diagnostics float
    DiagnosticFloatingInfo          { NormalFloat }, -- Used to color "Information" diagnostic messages in diagnostics float
    DiagnosticFloatingHint          { NormalFloat }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    helpHyperTextJump               { gui = "underline", fg = hsluv('#80b0ff') },

    -- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- NormalNC     { }, -- normal text in non-current windows
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- WildMenu     { }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    -- Bold       { gui = "bold" },
    -- Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    -- LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    TSConstructor        { Operator };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    TSConstBuiltin       { Constant };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    TSFuncBuiltin        { Operator };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    TSNamespace          { Identifier };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable           { };    -- Any variable name that does not have another highlight.
    TSVariableBuiltin    { fg = hsluv(350, 70, 70) };    -- Variable names that are defined by the languages, like `this` or `self`.
    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
