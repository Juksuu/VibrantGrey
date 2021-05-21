local utils = require('vibrantgrey.utils')
local c = require('vibrantgrey.colors')

local M = {}

--TODO: Add correct styling for bg and comments
local function set_groups()
  -- local conf = require('vibrantgrey.config')
  local groups = {
    Normal = { fg = c.fg, bg = c.bg }, -- normal text
    NormalNC = { fg = c.fg, bg = c.bg }, -- normal text in non-current windows
    NormalSB = { fg = c.fg, bg = c.bg }, -- normal text in non-current windows
    NormalFloat = { fg = c.fg, bg = c.bg_highlight }, -- Normal text in floating windows.
    Comment = { fg = c.fg2 }, -- any comment
    Cursor = { fg = c.bg, bg = c.fg }, -- character under the cursor
    lCursor = { fg = c.bg, bg = c.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { fg = c.bg, bg = c.fg }, -- like Cursor, but used when in IME mode |CursorIM|
    Directory = { fg = c.green }, -- directory names (and other special names in listings)
    EndOfBuffer = { fg = c.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    VertSplit = { fg = c.bg_highlight2, bg = c.bg_highlight2 }, -- the column separating vertically split windows
    Conceal = { fg = c.fg2 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Whitespace = { fg = c.red }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    SpecialKey = { fg = c.fg2 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    NonText = { fg = c.fg2 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    LineNr = { fg = c.fg2 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = c.white }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    Question = { fg = c.fg }, -- |hit-enter| prompt and yes/no questions
    MatchParen = { fg = c.orange, style = "bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    FloatBorder = { fg = c.bg_highlight },
    QuickFixLine = { bg = c.bg_highlight2, style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { bg = c.yellow, fg = c.black }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { bg = c.yellow, fg = c.black }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Visual = { bg = c.bg_highlight2 }, -- Visual mode selection
    VisualNOS = { bg = c.bg_highlight2 }, -- Visual mode selection when vim is "Not Owning the Selection".
    StatusLine = {fg = c.bg_highlight2, bg = c.bg_highlight2},
    StatusLineNC = {fg = c.bg_highlight2, bg = c.bg_highlight2},
    WildMenu = { bg = c.bg_highlight2 }, -- current match in 'wildmenu' completion

    DiffAdd = { bg = c.diff.add }, -- diff mode: Added line |diff.txt|
    DiffChange = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { bg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
    DiffText = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|

    Folded = { fg = c.blue, bg = c.fg2 }, -- line used for closed folds
    FoldColumn = { bg = c.bg, fg = c.fg2 }, -- 'foldcolumn'
    SignColumn = { fg = c.fg2 }, -- column where |signs| are displayed
    SignColumnSB = { fg = c.fg2 }, -- column where |signs| are displayed
    ColorColumn = { bg = c.bg_highlight }, -- used for the columns set with 'colorcolumn'
    CursorColumn = { bg = c.bg_highlight }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = c.bg_highlight }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    -- TermCursor  = { }, -- cursor in a focused terminal
    -- TermCursorNC= { }, -- cursor in an unfocused terminal

    SpellBad = { sp = c.error, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = c.warning, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = c.info, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = c.hint, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

    ModeMsg = { fg = c.fg, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = { fg = c.fg }, -- Area for messages and cmdline
    -- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = c.fg }, -- |more-prompt|

    Pmenu = { bg = c.bg_highlight, fg = c.fg }, -- Popup menu: normal item.
    PmenuSel = { bg = c.bg_highlight2 }, -- Popup menu: selected item.
    PmenuSbar = { bg = c.bg_highlight2 }, -- Popup menu: scrollbar.
    PmenuThumb = { bg = c.fg2 }, -- Popup menu: Thumb of the scrollbar.

    ErrorMsg = { fg = c.error }, -- error messages on the command line
    WarningMsg = { fg = c.warning }, -- warning messages

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant = { fg = c.pink }, -- (preferred) any constant
    String = { fg = c.string }, --   a string constant: "this is a string"
    Character = { fg = c.string }, --  a character constant: 'c', '\n'
    -- Number        = { }, --   a number constant: 234, 0xff
    -- Boolean       = { }, --  a boolean constant: TRUE, false
    -- Float         = { }, --    a floating point constant: 2.3e10

    Identifier = { fg = c.orange2 }, -- (preferred) any variable name
    Function = { fg = c.yellow }, -- function name (also: methods for classes)
    Operator = { fg = c.orange }, -- "sizeof", "+", "*", etc.

    Keyword = { fg = c.pink }, --  any other keyword
    -- Exception     = { }, --  try, catch, throw

    Statement = { fg = c.statement }, -- (preferred) any statement
    -- Conditional   = { }, --  if, then, else, endif, switch, etc.
    -- Repeat        = { }, --   for, do, while, etc.
    -- Label         = { }, --    case, default, etc.

    PreProc = { fg = c.pink }, -- (preferred) generic Preprocessor
    -- Include       = { }, --  preprocessor #include
    -- Define        = { }, --   preprocessor #define
    -- Macro         = { }, --    same as Define
    -- PreCondit     = { }, --  preprocessor #if, #else, #endif, etc.

    Type = { fg = c.blue }, -- (preferred) int, long, char, etc.
    -- StorageClass  = { }, -- static, register, volatile, etc.
    -- Structure     = { }, --  struct, union, enum, etc.
    -- Typedef       = { }, --  A typedef

    Special = { fg = c.white }, -- (preferred) any special symbol
    -- SpecialChar   = { }, --  special character in a constant
    -- Tag           = { }, --    you can use CTRL-] on this
    -- Delimiter     = { }, --  character that needs attention
    -- SpecialComment= { }, -- special things inside a comment
    -- Debug         = { }, --    debugging statements

    Underlined = { style = "underline" }, -- (preferred) text that stands out, HTML links
    Bold = { style = "bold" },
    Italic = { style = "italic" },

    Error = { fg = c.error }, -- (preferred) any erroneous construct

    -- These groups are for the native LSP client

    LspReferenceText = { bg = c.fg2 }, -- used for highlighting "text" references
    LspReferenceRead = { bg = c.fg2 }, -- used for highlighting "read" references
    LspReferenceWrite = { bg = c.fg2 }, -- used for highlighting "write" references
    LspDiagnosticsDefaultError = { fg = c.error }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning = { fg = c.warning }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation = { fg = c.info }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint = { fg = c.hint }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    LspDiagnosticsVirtualTextError = { bg = utils.adjust_brightness(c.error, 0.1), fg = c.error }, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning = { bg = utils.adjust_brightness(c.warning, 0.1), fg = c.warning }, -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation = { bg = utils.adjust_brightness(c.info, 0.1), fg = c.info }, -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint = { bg = utils.adjust_brightness(c.hint, 0.1), fg = c.hint }, -- Used for "Hint" diagnostic virtual text

    LspDiagnosticsUnderlineError = { style = "undercurl", sp = c.error }, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = c.warning }, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = c.info }, -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint = { style = "undercurl", sp = c.hint }, -- Used to underline "Hint" diagnostics

    diffAdded = { fg = c.diff.add },
    diffRemoved = { fg = c.diff.delete },
    diffChanged = { fg = c.diff.change },
    diffOldFile = { fg = c.red },
    diffNewFile = { fg = c.green },

    -- GitGutter
    GitGutterAdd = { fg = c.diff.add }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = c.diff.change }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd = { fg = c.diff.add }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.diff.change }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|

    -- LspSaga
    DiagnosticError = { fg = c.error },
    DiagnosticWarning = { fg = c.warning },
    DiagnosticInformation = { fg = c.info },
    DiagnosticHint = { fg = c.hint },

    -- NeoVim
    healthError = { fg = c.error },
    healthSuccess = { fg = c.hint },
    healthWarning = { fg = c.warning },
    Title = { fg = c.pink }
  }

  for group, parameters in pairs(groups) do
      utils.highlight(group, parameters)
  end
end

function M.colorscheme()
  vim.api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'vibrantgrey'

  set_groups()
end

return M
