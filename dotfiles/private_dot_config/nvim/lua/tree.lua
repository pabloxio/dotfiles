-- vim: filetype=lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    side = "right",
    adaptive_size = false,
  },
  renderer = {
    root_folder_label = false,
    group_empty = true,
    icons = {
      webdev_colors = true,
    },
  },
  filters = {
    dotfiles = true,
  },
  git = {
    enable = false,
    ignore = true
  },
})

vim.cmd([[
nmap <leader>e :NvimTreeToggle<CR>
]])
