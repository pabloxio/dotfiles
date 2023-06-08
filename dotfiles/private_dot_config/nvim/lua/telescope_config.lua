-- vim: filetype=lua

-- General config
require("telescope").setup {
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
      height = 0.95,
      width = 0.8,
    },
  },
  pickers = {
    man_pages = { sections = { "ALL" } },
    find_files = {
      find_command = { 'rg', '--files', '--hidden', '-g', '!.git' },
    }
  }
}

-- see :h telescope.builtin
require('telescope.builtin').buffers({
  sort_lastused = true,
  ignore_current_buffer = true
})

vim.cmd([[
" Telescope
nmap <leader>fT :Telescope<cr>

" Commands
nmap <leader>fc :Telescope commands<cr>

" Files
nmap <leader>ff :Telescope find_files<cr>
nmap <leader>fo :Telescope oldfiles<cr>
nmap <leader>fF :Telescope git_files<cr>

" Grep buffers/files
nmap <leader>fg :Telescope live_grep<cr>
nmap <leader>f* :Telescope grep_string<cr>
nmap <leader>f/ :Telescope current_buffer_fuzzy_find<cr>

" VIM
nmap <leader>fb :Telescope buffers<cr>
nmap <leader>fh :Telescope command_history<cr>
nmap <leader>ft :Telescope filetypes<cr>
nmap <leader>f, :Telescope vim_options<cr>

" Emoji
nmap <leader>fe :Telescope emoji<cr>

" General
nmap <leader>fm :Telescope man_pages<cr>
]])
