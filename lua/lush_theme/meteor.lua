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
local hsl = lush.hsl

local normal_fg = hsl('#e4e4e4')
local strong_fg = hsl('#d7af00')

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

    Normal       { fg = normal_fg }, -- normal text
    SpecialKey   { fg = hsl('#d75f87') }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    VertSplit    { fg = hsl('#ffff5f') }, -- the column separating vertically split windows
    SignColumn   { bg = hsl('#1c1c1c'), fg = hsl('#6c6c6c') }, -- column where |signs| are displayed
    NonText      { fg = hsl('#d75f87') }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Directory    { fg = hsl('#00afff') }, -- directory names (and other special names in listings)
    Title        { fg = strong_fg, gui = 'bold' }, -- titles for output from ":set all", ":autocmd" etc.

    Cursor       { bg = hsl('#ffffff') }, -- character under the cursor
    CursorIM     { Cursor }, -- like Cursor, but used when in IME mode |CursorIM|
    MatchParen   { bg = hsl('#585858') }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    FoldColumn   { bg = hsl('#1c1c1c'), fg = hsl('#5fd7ff') }, -- 'foldcolumn'
    Folded       { bg = hsl('#000040'), fg = hsl('#5fd7ff') }, -- line used for closed folds

    LineNr       { bg = hsl('#1c1c1c'), fg = hsl('#6c6c6c') }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { bg = hsl('#1c301c'), fg = hsl('#dddd00'), gui = 'bold' }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    StatusLine   { bg = hsl('#3a3a3a'), fg = hsl('#9e9e9e') }, -- status line of current window
    StatusLineNC { bg = hsl('#121212'), fg = hsl('#9e9e9e') }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    ColorColumn  { bg = hsl('#585858') }, -- used for the columns set with 'colorcolumn'
    ErrorMsg     { bg = hsl('#af0000'), fg = normal_fg }, -- error messages on the command line
    Question     { fg = strong_fg }, -- |hit-enter| prompt and yes/no questions
    WarningMsg   { bg = hsl('#d75f00'), fg = hsl('#e4e4e4'), gui = 'bold' }, -- warning messages
    MoreMsg      { fg = strong_fg }, -- |more-prompt|
    ModeMsg      { fg = strong_fg }, -- 'showmode' message (e.g., "-- INSERT -- ")

    Search       { bg = hsl('#585858'), fg = hsl('#ffff5f') }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch    { bg = hsl('#008700'), fg = hsl('#ffff5f') }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting

    DiffAdd      { bg = hsl('#005c00'), fg = hsl('#005c00').lighten(70).desaturate(30) }, -- diff mode: Added line |diff.txt|
    DiffDelete   { bg = hsl('#5c0000'), fg = hsl('#5c0000').lighten(70).desaturate(10) }, -- diff mode: Deleted line |diff.txt|
    DiffChange   { bg = hsl('#000040'), fg = hsl('#000040').lighten(80).desaturate(30) }, -- diff mode: Changed line |diff.txt|
    DiffText     { bg = hsl('#005f5f'), fg = hsl('#005f5f').lighten(70).desaturate(30) }, -- diff mode: Changed text within a changed line |diff.txt|
    GitGutterAdd { fg = hsl('#00aa00') },
    GitGutterChange { fg = hsl('#cccc22') },
    GitGutterDelete { fg = hsl('#ff2222') },

    Visual       { bg = hsl('#404040') }, -- Visual mode selection
    VisualNOS    { bg = hsl('#404040') }, -- Visual mode selection when vim is "Not Owning the Selection".

    Pmenu        { bg = hsl('#3e2d20'), fg = normal_fg }, -- Popup menu: normal item.
    PmenuSel     { bg = hsl('#3e2d20').lighten(20), fg = normal_fg.darken(10) }, -- Popup menu: selected item.
    PmenuSbar    { bg = hsl('#606060') }, -- Popup menu: scrollbar.
    PmenuThumb   { bg = hsl('#cccccc') }, -- Popup menu: Thumb of the scrollbar.

    TabLine      { bg = hsl('#282828'), fg = normal_fg.darken(30) }, -- tab pages line, not active tab page label
    TabLineSel   { bg = hsl('#282828').lighten(20), fg = normal_fg }, -- tab pages line, where there are no labels
    TabLineFill  { bg = hsl('#262626') }, -- tab pages line, active tab page label

    Comment      { fg = hsl('#808080'), gui = "italic" }, -- any comment

    Constant       { fg = hsl('#d75f00') }, -- (preferred) any constant
    String         { fg = hsl('#ffa580') }, --   a string constant: "this is a string"
    Character      { fg = hsl('#ffd760') }, --  a character constant: 'c', '\n'
    Number         { fg = hsl('#af00ff') }, --   a number constant: 234, 0xff
    Boolean        { Constant }, --  a boolean constant: TRUE, false
    Float          { Number }, --    a floating point constant: 2.3e10

    Identifier     { fg = hsl('#afffff') }, -- (preferred) any variable name
    Function       { fg = hsl('#5fffff') }, -- function name (also: methods for classes)

    Statement      { fg = hsl('#0087ff') }, -- (preferred) any statement
    -- Conditional    { Statement }, --  if, then, else, endif, switch, etc.
    -- Repeat         { Statement }, --   for, do, while, etc.
    -- Label          { Statement }, --    case, default, etc.
    -- Operator       { Statement }, -- "sizeof", "+", "*", etc.
    -- Keyword        { Statement }, --  any other keyword
    Exception      { fg = hsl('#0087ff').lighten(40).desaturate(20) }, --  try, catch, throw

    PreProc        { fg = hsl('#87d700') }, -- (preferred) generic Preprocessor
    -- Include        { PreProc }, --  preprocessor #include
    -- Define         { PreProc }, --   preprocessor #define
    -- Macro          { PreProc }, --    same as Define
    -- PreCondit      { PreProc }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = hsl('#ffd75f') }, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special        { fg = hsl('#d75f87')}, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    Delimiter      { Special }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    Error          { bg = hsl('#900000'), fg = normal_fg }, -- (preferred) any erroneous construct
    Todo           { fg = strong_fg.lighten(10), gui = 'bold' }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    SpellBad     { gui = 'undercurl', sp = '#ff0000' }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap     { gui = 'undercurl', sp = '#eecc00' }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { SpellCap }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { SpellCap }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

    LspDiagnosticsSignError              { bg = SignColumn.bg, fg = hsl('#d70000') }, -- Used for "Error" signs in sign column
    LspDiagnosticsSignWarning            { bg = SignColumn.bg, fg = hsl('#ff8700') }, -- Used for "Warning" signs in sign column
    LspDiagnosticsSignInformation        { bg = SignColumn.bg, fg = hsl('#5fd7ff') }, -- Used for "Information" signs in sign column
    LspDiagnosticsSignHint               { LspDiagnosticsSignInformation }, -- Used for "Hint" signs in sign column
    LspSagaLightBulbSign                 { LspDiagnosticsSignHint }, -- Used for "Hint" signs in sign column

    LspNumError              { bg = hsl('#870000') }, -- Used for "Error" signs in sign column
    LspNumWarning            { bg = hsl('#af5f00') }, -- Used for "Warning" signs in sign column
    LspNumInformation        { }, -- Used for "Information" signs in sign column
    LspNumHint               { LspNumInformation }, -- Used for "Hint" signs in sign column

    -- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine   { }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- NormalFloat  { }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- WildMenu     { }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
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

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

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
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
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
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

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
