return {
  n = {
    -- Terminal
    ["<leader>tt"] = { "<cmd>term<cr>", desc = "New terminal" },
    ["<leader>tT"] = { "<cmd>tabnew term://zsh<cr>", desc = "New terminal in a new tab" },
    ["<leader>tx"] = { "<cmd>split term://zsh<cr>", desc = "New terminal split horizontal" },
    ["<leader>tv"] = { "<cmd>vsplit term://zsh<cr>", desc = "New terminal split vertical" },
    -- Telescope
    ["<leader>f/"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Find current buffer" },
  },
}
