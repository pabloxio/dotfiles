-- vim: filetype=lua

vim.cmd([[
nmap <leader>tt :term<CR>
nmap <leader>tT :tabnew term://zsh<CR>
nmap <leader>tx :split term://zsh<CR>
nmap <leader>tv :vsplit term://zsh<CR>

" Workaround for https://github.com/ntpeters/vim-better-whitespace/issues/158
augroup vimrc
  autocmd TermOpen * :DisableWhitespace
augroup END
]])

require("toggleterm").setup {
  size = 20,
  open_mapping = [[<leader>`]],
  shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
  shading_factor = "1", -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = true,
  persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
  direction = "float", -- 'vertical' | 'horizontal' | 'tab' | 'float',
  close_on_exit = true, -- close the terminal window when the process exits
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    border = "single", -- 'single' | 'double' | 'shadow' | 'curved'
    winblend = 3,
  }
}
