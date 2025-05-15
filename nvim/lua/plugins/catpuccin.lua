return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup {
        flavour = "mocha", -- mocha, macchiato, frappe, latte
        transparent_background = false,
        show_end_of_buffer = false,
        term_colors = true,
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.15,
        },
        no_italic = false,
        no_bold = false,
        no_underline = false,
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          loops = {},
          functions = { "bold" },
          keywords = { "bold" },
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = { "bold" },
          operators = {},
        },
        color_overrides = {
          mocha = {
            base = "#1e1e2e",
            mantle = "#181825",
            crust = "#11111b",
            text = "#cdd6f4",
            subtext1 = "#bac2de",
            subtext0 = "#a6adc8",
            overlay2 = "#9399b2",
            overlay1 = "#7f849c",
            overlay0 = "#6c7086",
            surface2 = "#585b70",
            surface1 = "#45475a",
            surface0 = "#313244",
            blue = "#89b4fa",
            lavender = "#b4befe",
            sapphire = "#74c7ec",
            sky = "#89dceb",
            teal = "#94e2d5",
            green = "#a6e3a1",
            yellow = "#f9e2af",
            peach = "#fab387",
            maroon = "#eba0ac",
            red = "#f38ba8",
            mauve = "#cba6f7",
            pink = "#f5c2e7",
            flamingo = "#f2cdcd",
            rosewater = "#f5e0dc",
          },
        },
        custom_highlights = function(colors)
          return {
            -- Editor
            LineNr = { fg = colors.overlay1 },
            CursorLineNr = { fg = colors.lavender, bold = true },
            SignColumn = { bg = "none" },

            -- Syntax
            ["@function"] = { fg = colors.blue, bold = true },
            ["@function.builtin"] = { fg = colors.blue, italic = true },
            ["@parameter"] = { fg = colors.mauve, italic = true },
            ["@string"] = { fg = colors.green },
            ["@keyword"] = { fg = colors.mauve, bold = true },
            ["@type"] = { fg = colors.blue, italic = true },

            -- LSP
            DiagnosticError = { fg = colors.red },
            DiagnosticWarn = { fg = colors.peach },
            DiagnosticInfo = { fg = colors.sky },
            DiagnosticHint = { fg = colors.lavender },

            -- Telescope
            TelescopeBorder = { fg = colors.surface1, bg = "none" },
            TelescopeTitle = { fg = colors.mauve, bold = true },
            TelescopePromptPrefix = { fg = colors.blue },

            -- NvimTree
            NvimTreeNormal = { bg = colors.mantle },
            NvimTreeWinSeparator = { fg = colors.surface0, bg = "none" },

            -- Status Line
            StatusLine = { bg = colors.surface0, fg = colors.text },
            StatusLineNC = { bg = colors.mantle, fg = colors.overlay1 },

            -- Cursor
            CursorLine = { bg = colors.surface0 },
            CursorColumn = { bg = colors.surface0 },

            -- Pmenu
            Pmenu = { bg = colors.mantle },
            PmenuSel = { bg = colors.surface0, bold = true },
          }
        end,
        integrations = {
          telescope = true,
          which_key = true,
          neotree = true,
          cmp = true,
          gitsigns = true,
          treesitter = true,
          mason = true,
          native_lsp = {
            enabled = true,
            virtual_text = {
              errors = { "italic" },
              hints = { "italic" },
              warnings = { "italic" },
              information = { "italic" },
            },
            underlines = {
              errors = { "underline" },
              hints = { "underline" },
              warnings = { "underline" },
              information = { "underline" },
            },
          },
        },
      }

      -- Aplicar o tema
      vim.cmd.colorscheme "catppuccin"

      -- Configurações adicionais para melhorar a aparência
    end,
  },
}
