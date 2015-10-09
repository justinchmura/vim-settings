source $HOME/.vim/settings.vim
source $HOME/.vim/commands.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/highlighting.vim
source $HOME/.vim/keyboard.vim

" set smartindent
" set cindent
" set autoindent
" set shiftwidth=2
" set tabstop=2
" set softtabstop=2
" set expandtab
" set smarttab
" set smartcase
" set number
" set numberwidth=4
" set incsearch
" set history=50
" set t_Co=256
" set nowrap
" set paste

" Disable code folding for markdown files
" let g:vim_markdown_folding_disabled=1

" Add a marker at line 80
" set colorcolumn=72

" let mapleader = ","
" 
" autocmd BufWritePre *.js :%s/\s\+$//e
" 
" " Open NERDtree by default
" autocmd vimenter * NERDTree
" 
" " Page through buffers with Ctrl+n and Ctrl+p
" noremap <C-n> :bnext<CR>
" noremap <C-p> :bprev<CR>
" 
" " Enable remote xdebug
" if !exists('g:vdebug_options')
"   let g:vdebug_options= {}
" endif
" 
" let g:vdebug_options['path_maps'] = {"/src": "/home/dustinboston/Projects/proscenium"}
" let g:vdebug_options['server'] = ""
" let g:vdebug_options['port'] = 9001
" 
" if has("autocmd")
"   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"     \| exe "normal g'\"" | endif
" endif
" 
" call pathogen#runtime_append_all_bundles()
" call pathogen#helptags()
" 
" if has("autocmd")
"   filetype off
"   filetype indent on
"   filetype plugin on
" endif
