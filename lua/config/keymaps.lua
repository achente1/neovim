-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Leader Key is set to <Space> by default in LazyVim

-- ============================================================================
-- 1. OBSIDIAN.NVIM KEYBINDS
-- ============================================================================
map("n", "<leader>on", "<cmd>ObsidianNew<cr>", { desc = "Obsidian: New Note" })
map("n", "<leader>od", "<cmd>ObsidianToday<cr>", { desc = "Obsidian: Today's Daily Note" })
map("n", "<leader>oy", "<cmd>ObsidianYesterday<cr>", { desc = "Obsidian: Yesterday's Note" })
map("n", "<leader>os", "<cmd>ObsidianSearch<cr>", { desc = "Obsidian: Search Notes" })
map("n", "<leader>ot", "<cmd>ObsidianTemplate<cr>", { desc = "Obsidian: Insert Template" })
map("n", "<leader>ob", "<cmd>ObsidianBacklinks<cr>", { desc = "Obsidian: Show Backlinks" })
map("n", "<leader>ol", "<cmd>ObsidianLinks<cr>", { desc = "Obsidian: Show Links" })

-- ============================================================================
-- 2. FILE TREE & TERMINAL KEYBINDS
-- ============================================================================
map("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle Neo-Tree Explorer" })
map("n", "<leader>ft", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle Floating Terminal" })
map("n", "<leader>ht", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Toggle Horizontal Terminal" })

-- ============================================================================
-- 3. MARKDOWN & LATEX KEYBINDS
-- ============================================================================
map("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Toggle Markdown Browser Preview" })
map("n", "<leader>mr", "<cmd>RenderMarkdown toggle<cr>", { desc = "Toggle In-Buffer Markdown Rendering" })
map("n", "<leader>ll", "<cmd>VimtexCompile<cr>", { desc = "VimTeX: Toggle Live Compile" })
map("n", "<leader>lv", "<cmd>VimtexView<cr>", { desc = "VimTeX: View PDF (Zathura)" })

-- ============================================================================
-- 4. GIT & DEBUGGING KEYBINDS
-- ============================================================================
map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "Open LazyGit" })
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { desc = "DAP: Toggle Breakpoint" })
map("n", "<leader>dc", "<cmd>DapContinue<cr>", { desc = "DAP: Start/Continue" })
map("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "DAP: Toggle UI" })
