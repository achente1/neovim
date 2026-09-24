return {
  -- 1. Configure Tokyo Night with AMOLED black color overrides
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night", -- "storm", "moon", "night", or "day"
      transparent = false,
      on_colors = function(colors)
        colors.bg = "#000000"
        colors.bg_dark = "#000000"
        colors.bg_float = "#000000"
        colors.bg_sidebar = "#000000"
        colors.bg_popup = "#000000"
        colors.bg_statusline = "#000000"
      end,
      on_highlights = function(hl, c)
        hl.NormalFloat = { bg = "#000000", fg = c.fg }
        hl.FloatBorder = { bg = "#000000", fg = c.blue }
        hl.NvimTreeNormal = { bg = "#000000" }
        hl.NeoTreeNormal = { bg = "#000000" }
        hl.NeoTreeNormalNC = { bg = "#000000" }
      end,
    },
  },

  -- 2. Set Tokyo Night as the active LazyVim theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
