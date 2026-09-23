return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        theme = "dragon", -- Darkest palette base
        transparent = false,
        dimInactive = false,
        terminalColors = true,
        colors = {
          palette = {
            -- Force absolute OLED black across base palettes
            sumiInk0 = "#000000",
            sumiInk1 = "#000000",
            sumiInk2 = "#000000",
            sumiInk3 = "#000000",
            sumiInk4 = "#050505",
          },
          theme = {
            all = {
              ui = {
                bg = "#000000",
                bg_gutter = "#000000",
                bg_m1 = "#000000",
                bg_m2 = "#000000",
                bg_p1 = "#000000",
                bg_p2 = "#000000",
                bg_search = "#121212",
              },
            },
          },
        },
        overrides = function(colors)
          return {
            Normal = { bg = "#000000" },
            NormalNC = { bg = "#000000" },
            NormalFloat = { bg = "#000000" },
            FloatBorder = { bg = "#000000", fg = colors.theme.ui.fg_dim },
            SignColumn = { bg = "#000000" },
            FoldColumn = { bg = "#000000" },
            NeoTreeNormal = { bg = "#000000" },
            NeoTreeNormalNC = { bg = "#000000" },
            LineNr = { fg = "#3a3a3a", bg = "#000000" },
            CursorLine = { bg = "#0a0a0a" },
            CursorLineNr = { fg = colors.theme.ui.fg, bold = true, bg = "#000000" },
          }
        end,
      })
      vim.cmd("colorscheme kanagawa")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
