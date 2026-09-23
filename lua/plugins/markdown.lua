return {
  -- In-buffer visual rendering (callouts, checkboxes, math preview)
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      file_types = { "markdown" },
      heading = {
        enabled = true,
        sign = true,
        icons = { "# ", "## ", "### ", "#### ", "##### ", "###### " },
      },
      checkbox = {
        enabled = true,
      },
      bullet = {
        enabled = true,
      },
    },
    ft = { "markdown" },
  },

  -- Live browser preview
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
}
