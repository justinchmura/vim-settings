runtime! debian.vim

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

call pathogen#runtime_append_all_bundles()

if has("autocmd")
  filetype off
  filetype indent on
  filetype plugin on
endif

" Enable syntax highlighting
syntax on

set smartindent
set cindent
set autoindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set smartcase
set number
set numberwidth=4
set incsearch
set history=50
set t_Co=256

" Disable code folding for markdown files
let g:vim_markdown_folding_disabled=1

" Enable zenburn color scheme
colorscheme zenburn
let g:zenburn_high_Contrast=1
colors zenburn

" Add a marker at line 80
set colorcolumn=72

let mapleader = ","

autocmd BufWritePre *.js :%s/\s\+$//e

source $HOME/.vim/highlighting.vim
source $HOME/.vim/keyboard.vim
