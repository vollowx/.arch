require('catppuccin').setup({
  color_overrides = {
    mocha = {
      rosewater = '#ff8389',
      flamingo = '#ff8389',
      red = '#ff8389',
      maroon = '#ff8389',
      pink = '#ff7eb6',
      mauve = '#be95ff',
      peach = '#d44a1c',
      yellow = '#ab8600',
      green = '#08bdba',
      teal = '#33b1ff',
      sky = '#33b1ff',
      sapphire = '#33b1ff',
      blue = '#78a9ff',
      lavender = '#78a9ff',
      text = '#ffffff',
      subtext1 = '#f4f4f4',
      subtext0 = '#e0e0e0',
      overlay2 = '#adadad',
      overlay1 = '#949494',
      overlay0 = '#7a7a7a',
      surface2 = '#4f4f4f',
      surface1 = '#383838',
      surface0 = '#2e2e2e',
      base = '#161616',
      mantle = '#0d0d0d',
      crust = '#000000',
    },
  },
  styles = {
    comments = { 'italic' },
    conditionals = { 'italic' },
    functions = { 'italic' },
    keywords = { 'italic' },
    numbers = { 'bold' },
    types = { 'bold' },
  },
  integrations = {
    treesitter = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { 'italic' },
        hints = { 'italic' },
        warnings = { 'italic' },
        information = { 'italic' },
      },
      underlines = {
        errors = { 'undercurl' },
        hints = { 'undercurl' },
        warnings = { 'undercurl' },
        information = { 'undercurl' },
      },
    },

    alpha = false,
    dap = false,
    dap_ui = false,
    dashboard = false,
    fidget = false,
    flash = false,
    illuminate = { enabled = false },
    mini = { enabled = false },
    neogit = false,
    nvimtree = false,
    rainbow_delimiters = false,
    ufo = false,

    beacon = true,
    cmp = true,
    dropbar = { enabled = true, color_mode = true },
    gitsigns = true,
    headlines = true,
    hop = true,
    indent_blankline = { enabled = true, scope_color = 'surface1' },
    markdown = true,
    noice = true,
    semantic_tokens = true,
    telescope = { enabled = true, style = 'nvchad' },
  },
  highlight_overrides = {
    all = function(cp)
      return {
        NormalFloat = { bg = cp.mantle },
        FloatBorder = { bg = cp.mantle, fg = cp.mantle },
        FloatTitle = { bg = cp.mantle, fg = cp.mantle },
        CursorLineNr = { fg = cp.mauve, style = { 'bold' } },
        VertSplit = { fg = cp.surface0 },
        WinSeparator = { fg = cp.surface0 },
        Pmenu = { bg = cp.mantle },
        PmenuSbar = { bg = cp.crust },
        PmenuSel = { bg = cp.surface0, fg = '' },
        PmenuThumb = { bg = cp.surface0 },

        CmpItemKindSnippet = { bg = cp.mauve, fg = cp.base },
        CmpItemKindKeyword = { bg = cp.red, fg = cp.base },
        CmpItemKindText = { bg = cp.teal, fg = cp.base },
        CmpItemKindMethod = { bg = cp.blue, fg = cp.base },
        CmpItemKindConstructor = { bg = cp.blue, fg = cp.base },
        CmpItemKindFunction = { bg = cp.blue, fg = cp.base },
        CmpItemKindFolder = { bg = cp.blue, fg = cp.base },
        CmpItemKindModule = { bg = cp.blue, fg = cp.base },
        CmpItemKindConstant = { bg = cp.peach, fg = cp.base },
        CmpItemKindField = { bg = cp.green, fg = cp.base },
        CmpItemKindProperty = { bg = cp.green, fg = cp.base },
        CmpItemKindEnum = { bg = cp.green, fg = cp.base },
        CmpItemKindUnit = { bg = cp.green, fg = cp.base },
        CmpItemKindClass = { bg = cp.yellow, fg = cp.base },
        CmpItemKindVariable = { bg = cp.flamingo, fg = cp.base },
        CmpItemKindFile = { bg = cp.blue, fg = cp.base },
        CmpItemKindInterface = { bg = cp.yellow, fg = cp.base },
        CmpItemKindColor = { bg = cp.red, fg = cp.base },
        CmpItemKindReference = { bg = cp.red, fg = cp.base },
        CmpItemKindEnumMember = { bg = cp.red, fg = cp.base },
        CmpItemKindStruct = { bg = cp.blue, fg = cp.base },
        CmpItemKindValue = { bg = cp.peach, fg = cp.base },
        CmpItemKindEvent = { bg = cp.blue, fg = cp.base },
        CmpItemKindOperator = { bg = cp.blue, fg = cp.base },
        CmpItemKindTypeParameter = { bg = cp.blue, fg = cp.base },
        CmpItemKindCopilot = { bg = cp.teal, fg = cp.base },

        CmpGhostText = { link = 'Comment' },
        LspInfoBorder = { link = 'FloatBorder' },
        GitSignsChange = { fg = cp.peach },
        GitSignsCurrentLineBlame = { link = 'Comment' },

        TelescopeSelection = { bg = cp.surface0 },
        TelescopePromptCounter = { fg = cp.mauve, style = { 'bold' } },

        TelescopePromptPrefix = { bg = cp.surface0 },
        TelescopePromptNormal = { bg = cp.surface0 },
        TelescopeResultsNormal = { bg = cp.mantle },
        TelescopePreviewNormal = { bg = cp.crust },

        TelescopePromptBorder = { bg = cp.surface0, fg = cp.surface0 },
        TelescopeResultsBorder = { bg = cp.mantle, fg = cp.mantle },
        TelescopePreviewBorder = { bg = cp.crust, fg = cp.crust },
        TelescopePreviewMessage = { fg = cp.teal, style = { 'italic' } },

        TelescopePromptTitle = { fg = cp.surface0, bg = cp.surface0 },
        TelescopeResultsTitle = { fg = cp.mantle, bg = cp.mantle },
        TelescopePreviewTitle = { fg = cp.crust, bg = cp.crust },

        NoiceConfirm = { bg = cp.mantle, fg = cp.mauve },
        NoiceCmdlineIconLua = { fg = cp.blue },
        NoiceConfirmBorder = { bg = cp.mantle, fg = cp.mantle },
        NoiceMini = { link = 'Comment' },
        NoiceLspProgressClient = {
          fg = cp.blue,
          style = { 'italic', 'bold' },
        },

        StatusNormal = { bg = cp.lavender, fg = cp.base },
        StatusInsert = { bg = cp.pink, fg = cp.base },
        StatusVisual = { bg = cp.pink, fg = cp.base },
        StatusReplace = { bg = cp.peach, fg = cp.base },
        StatusCommand = { bg = cp.green, fg = cp.base },
        StatusTerminal = { bg = cp.teal, fg = cp.base },
        StatusLineDiagnosticWarn = { link = 'DiagnosticWarn' },
        StatusLineDiagnosticError = { link = 'DiagnosticError' },

        -- oxocarbon
        Structure = { fg = cp.pink },
        StorageClass = { fg = cp.pink },
        Type = { fg = cp.pink, style = { 'bold' } },
        Constant = { fg = cp.text, style = { 'bold' } },
        Number = { fg = cp.text },
        Float = { fg = cp.text },
        Boolean = { fg = cp.pink },
        ['@function.builtin'] = { fg = cp.pink },
        ['@method'] = { fg = cp.pink },
        ['@constant'] = { fg = cp.text, style = { 'bold' } },
        ['@variable.builtin'] = { fg = cp.pink },
        ['@type.builtin'] = { fg = cp.pink, style = { 'bold' } },
        ['@tag.attribute.tsx'] = { fg = cp.mauve, style = { 'italic' } },
      }
    end,
  },
})
