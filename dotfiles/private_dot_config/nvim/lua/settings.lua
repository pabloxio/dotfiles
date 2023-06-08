-- vim: filetype=lua

vim.cmd([[
syntax on
filetype indent on
filetype plugin on

" Tab config
set tabstop=4 shiftwidth=4 expandtab
autocmd FileType javascriptreact,typescriptreact,javascript,lua,json,css,scss,terraform setlocal shiftwidth=2 tabstop=2

" Disable mouse
set mouse=

set backspace=indent,eol,start
set relativenumber
set splitbelow
set splitright
set encoding=UTF-8
set updatetime=100

colorscheme nord

let g:loaded_perl_provider = 0

let mapleader=";"

" Whitespaces
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
let g:strip_only_modified_lines=1

" Auto-format on save
autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
]])
