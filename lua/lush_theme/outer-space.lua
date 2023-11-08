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
-- Note: Because this is a lua file, vim will append it to the runtime,
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

local a = {
    bg = hsl("#182024"),
    float = hsl("#2d3539");
    sel = hsl("#434f56");
    ui = hsl("#70868f");
    com = hsl("#8d9da5");
    fg = hsl("#d4dadd");
}

local b = {
    red = hsl("#dd8888");
    green = hsl("#b3dd88");
    blue = hsl("#889ddd");
    yellow = hsl("#d9c68c");
    cyan = hsl("#90d5be");
    magenta = hsl("#c188dd");
}

local c = {
    red = hsl("#d19494");
    green = hsl("#a6c982");
    blue = hsl("#94a3d1");
    yellow = hsl("#d1b394");
    cyan = hsl("#94c7d1");
    magenta = hsl("#bd94d1");
}

local d = {
    red = hsl("#c99c9c");
    green = hsl("#b3c99c");
    blue = hsl("#98a5cd");
    yellow = hsl("#c9b39c");
    cyan = hsl("#9cc9c9");
    magenta = hsl("#ba9cc9");
}

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    Normal  { fg = a.fg, bg = a.bg },
  NormalFloat  { bg = a.float },
  -- NormalNC  {},

  -- Cursor  {},
  -- lCursor  {},
  -- CursorIM  {},
  -- TermCursor  {},
  -- TermCursorNC  {},

  ColorColumn  { bg = a.float },
  CursorColumn  { ColorColumn },
  CursorLine  { ColorColumn },
  VertSplit  { fg = a.ui },

  LineNr  { fg = a.ui },
  CursorLineNr  { fg = c.cyan, bg = a.float },

  Folded  { fg = a.com, bg = d.cyan },
  FoldColumn  { LineNr },
  SignColumn  { LineNr },

  Pmenu  { NormalFloat },
  PmenuSel  { bg = a.sel },
  PmenuSbar  { Pmenu },
  PmenuThumb  { PmenuSel },

  StatusLine  { NormalFloat },
  StatusLineNC  { fg = a.com, bg = a.float },
  WildMenu  { NormalFloat },

  TabLine  { StatusLineNC },
  TabLineFill  { StatusLine },
  TabLineSel  { bg = a.float, gui = "bold" },

  MatchParen  { fg = b.cyan, bg = a.sel, gui = "bold" },
  Search  { fg = a.bg, bg = d.cyan, gui = "bold" },
  Substitute  { bg = a.sel, gui = "bold" },
  -- QuickFixLine  {},
  -- IncSearch  {},
  Visual  { bg = a.sel },
  -- VisualNOS  {},

  Conceal  { fg = a.com },
  Whitespace  { fg = a.ui },
  -- EndOfBuffer  {},
  NonText  { Whitespace },
  SpecialKey  { Whitespace },

  Directory  { fg = c.magenta },
  Title  { fg = c.cyan },
  ErrorMsg  { fg = c.red },
  ModeMsg  { fg = a.com },
  -- MsgArea  {},
  -- MsgSeparator  {},
  MoreMsg  { fg = c.yellow, gui = "bold" },
  WarningMsg  { fg = c.red },
  Question  { MoreMsg },

  ---- :help :diff -------------------------------------------

  DiffAdd  { bg = d.green },
  DiffChange  { bg = d.magenta },
  DiffDelete  { bg = d.red },
  DiffText  { bg = d.blue },

  DiffAdded  { DiffAdd },
  DiffRemoved  { DiffDelete },

  ---- :help spell -------------------------------------------

  SpellBad  { fg = c.red, gui = "undercurl" },
  SpellCap  { fg = c.blue, gui = "undercurl" },
  SpellLocal  { fg = c.cyan, gui = "undercurl" },
  SpellRare  { fg = b.cyan, gui = "undercurl" },

  ---- :help group-name --------------------------------------

  Comment  { fg = a.com, gui = "italic" },
  Identifier  { fg = a.fg },
  Function  { fg = b.cyan },
  Constant  { fg = c.magenta },
  String  { fg = c.yellow, gui = "italic" },
  Character  { fg = c.yellow },
  Number  { fg = b.magenta },
  Boolean  { Number },
  -- Float  {},

  Statement  { fg = c.cyan },
  -- Conditional  {},
  -- Repeat  {},
  -- Label  {},
  Operator  { fg = b.blue },
  -- Keyword  {},
  -- Exception  {},

  PreProc  { fg = b.yellow },
  -- Include  {},
  -- Define  {},
  -- Macro  {},
  -- PreCondit  {},

  Type  { fg = c.green },
  -- StorageClass  {},
  -- Structure  {},
  -- Typedef  {},

  Special  { fg = b.yellow },
  -- SpecialChar  {},
  -- Tag  {},
  Delimiter  { fg = d.blue },
  -- SpecialComment  {},
  -- Debug  {},

  Underlined  { gui = "underline" },
  Bold  { gui = "bold" },
  Italic  { gui = "italic" },

  Ignore  { fg = a.ui },
  Error  { bg = d.red },
  Todo  { fg = a.com, gui = "bold" },

  ---- :help nvim-treesitter-highlights (external plugin) ----

  -- sym('@comment') = {},
  sym('@comment.documentation')  { fg = a.com, gui = "nocombine" },

  -- sym('@boolean')  {},
  -- sym('@float')  {},
  -- sym('@number')  {},
  -- sym('@character')  {},
  -- sym('@character.special')  {},
  -- sym('@string')  {},
  sym('@string.documentation')  { fg = b.yellow, gui = "nocombine" },
  sym('@string.escape')  { fg = c.yellow },
  sym('@string.regex')  { fg = b.yellow },
  sym('@string.special')  { fg = b.green },

  -- sym('@keyword')  {},
  sym('@keyword.function') { PreProc },
  -- sym('@keyword.operator')  {},
  -- sym('@keyword.return')  {},
  -- sym('@conditional')  {},
  -- sym('@conditional.ternary')  {},
  -- sym('@exception')  {},
  -- sym('@include')  {},
  -- sym('@repeat')  {},

  sym('@constant') { Identifier }, -- Highlighting all caps identifiers is dumb
  sym('@constant.builtin') { Constant },
  sym('@constant.macro')  { Constant },
  sym('@label')  { fg = b.yellow },
  sym('@symbol')  { fg = a.fg, gui = "italic" },
  -- sym('@namespace')  {},
  -- sym('@variable')  {},
  sym('@variable.builtin') { sym('@symbol') },

  -- sym('@function')  {},
  -- sym('@function.builtin')  {},
  sym('@function.macro') { Function },
  sym('@constructor') { Function },
  -- sym('@method')  {},
  -- sym('@parameter')  {},

  -- sym('@type')  {},
  -- sym('@type.builtin')  {},
  -- sym('@type.definition')  {},
  sym('@type.qualifier') { Statement },
  sym('@storageclass') { Statement },
  sym('@storageclass.lifetime') { sym('@label') },
  -- sym('@attribute')  {}, -- unused
  -- sym('@field')  {},
  -- sym('@property')  {},

  -- sym('@punctuation.bracket')  {},
  sym('@punctuation.delimiter')  { fg = c.blue },
  -- sym('@punctuation.special')  {},

  -- sym('@text')  {},
  sym('@text.strong')  { gui = "bold" },
  sym('@text.emphasis')  { gui = "italic" },
  sym('@text.underline')  { gui = "underline" },
  sym('@text.strike')  { gui = "strikethrough" },
  -- sym('@text.title')  {},
  sym('@text.quote') { Comment },
  sym('@text.uri')  { fg = b.yellow, gui = "underline" },
  -- sym('@text.math')  {},
  -- sym('@text.environment')  {},
  -- sym('@text.environment.name')  {},
  sym('@text.reference')  { gui = "underline" },
  sym('@text.literal')  { fg = a.com },
  -- sym('@text.literal.block')  {},
  -- sym('@text.todo')  {},
  -- sym('@text.note')  {},
  -- sym('@text.warning')  {},
  -- sym('@text.danger')  {},
  -- sym('@text.diff.add')  {},
  -- sym('@text.diff.delete')  {},

  -- sym('@tag')  {},
  sym('@tag.attribute') { sym('@label') },
  sym('@tag.delimiter') { Delimiter },

  ---- :help diagnostic-highlight ----------------------------

  DiagnosticError  { fg = c.red },
  DiagnosticWarn  { fg = b.yellow },
  DiagnosticInfo  { fg = c.blue },
  DiagnosticHint  { fg = c.cyan },
  DiagnosticOk  { fg = c.green },
  DiagnosticUnderlineError  { gui = "undercurl", sp = c.red },
  DiagnosticUnderlineWarn  { gui = "undercurl", sp = b.yellow },
  DiagnosticUnderlineInfo  { gui = "undercurl", sp = c.blue },
  DiagnosticUnderlineHint  { gui = "undercurl", sp = c.cyan },
  DiagnosticUnderlineOk  { gui = "undercurl", sp = c.green },
  -- DiagnosticVirtualTextError  {},
  -- DiagnosticVirtualTextWarn  {},
  -- DiagnosticVirtualTextInfo  {},
  -- DiagnosticVirtualTextHint  {},
  -- DiagnosticVirtualTextOk  {},
  -- DiagnosticFloatingError  {},
  -- DiagnosticFloatingWarn  {},
  -- DiagnosticFloatingInfo  {},
  -- DiagnosticFloatingHint  {},
  -- DiagnosticFloatingOk  {},
  -- DiagnosticSignError  {},
  -- DiagnosticSignWarn  {},
  -- DiagnosticSignInfo  {},
  -- DiagnosticSignHint  {},
  -- DiagnosticSignOk  {},

  DiagnosticDeprecated  { DiagnosticUnderlineError },
  DiagnosticUnnecessary  { fg = a.com, gui = "undercurl" },

  ---- :help lsp-highlight -----------------------------------

  -- LspReferenceText = 'Visual',
  -- LspReferenceRead = 'Visual',
  -- LspReferenceWrite = 'Visual',

  -- TODO: lsp-highlight-codelens

  ---- :help lsp-semantic-highlight --------------------------

  -- sym("@lsp.type.class")  { Structure },
  -- sym("@lsp.type.comment")  { Comment },
  -- sym("@lsp.type.decorator")  { Function },
  -- sym("@lsp.type.enum")  { Structure },
  -- sym("@lsp.type.enumMember")  { Constant },
  -- sym("@lsp.type.function")  { Function },
  -- sym("@lsp.type.interface")  { Structure },
  sym("@lsp.type.macro")  { Function },
  -- sym("@lsp.type.method")  { Function },
  sym("@lsp.type.namespace") { fg = c.yellow },
  sym("@lsp.type.parameter") { fg = a.fg, gui = "bold" },
  -- sym("@lsp.type.property")  { Identifier },
  -- sym("@lsp.type.struct")  { Structure },
  -- sym("@lsp.type.type")  { Type },
  -- sym("@lsp.type.typeParameter")  { TypeDef },
  sym("@lsp.type.variable")  { Identifier },

  ---- :help vimtex-syntax-reference (external plugin) -------

  texOptSep  { sym("@punctuation.delimiter") },
  texOptEqual  { Operator },
  texFileArg  { Constant },
  texTitleArg = { gui = "bold" },
  texRefArg  { Constant },

  texMathCmd  { Function },
  texMathSymbol  { Operator },
  -- texMathZone  { TSMath },
  -- texMathDelimZone  { TSPunctDelimiter },
  texMathDelim  { Delimiter },
  texMathEnvArgName  { PreProc },

  --- neo-tree highlights  :help neo-tree-highlights ---

  NeoTreeNormal  { NormalFloat },
  NeoTreeNormalNC  { NeoTreeNormal },
  NeoTreeVertSplit { bg = a.bg, fg = a.bg },
  NeoTreeWinSeparator  { NeoTreeVertSplit },

  NeoTreeCursorLine { bg = a.sel },

  --- netrw: there's no comprehensive list of highlights... --

  netrwClassify  { Delimiter },
  netrwTreeBar  { Delimiter },
  netrwExe { fg = c.red },
  netrwSymLink { fg = c.magenta },

  ---- :h gitsigns (external plugin) -------------------------

  GitSignsAdd { fg = c.green },
  GitSignsChange { fg = c.yellow },
  GitSignsDelete { fg = c.red },
  GitSignsCurrentLineBlame { fg = c.blue },

  SignifySignAdd  { GitSignsAdd },
  SignifySignChange  { GitSignsChange },
  SignifySignDelete  { GitSignsDelete },

  ---- :h indent-blankline-highlights (external plugin) ------
  IndentBlanklineChar { fg = a.sel, gui = "nocombine" },
  IndentBlanklineSpaceChar  { IndentBlanklineChar },
  IndentBlanklineSpaceCharBlankline  { IndentBlanklineChar },
  IblIndent { fg = a.sel, gui = "nocombine" },
  IblWhitespace  { IblIndent },
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
