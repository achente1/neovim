return {
  {
    "lervag/vimtex",
    lazy = false, -- VimTeX handles its own lazy loading
    init = function()
      vim.g.vimtex_view_method = "zathura" -- Recommended PDF viewer for Linux/Mac
      vim.g.vimtex_compiler_method = "latexmk"
    end,
  },
}
