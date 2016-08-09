" https://github.com/tpope/vim-pathogen/issues/50
if has('win32') || has('win64')
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

runtime autoload/autoload/pathogen.vim
execute pathogen#infect()

" Required by Pathogen Plugin Manager
if has("autocmd")
  filetype off
  filetype indent on
  filetype plugin on
endif

" Enable zenburn color scheme
colorscheme zenburn
let g:zenburn_high_Contrast=1
colors zenburn

" Open NERDtree by default
autocmd vimenter * NERDTree

" Show hidden files by default
let NERDTreeShowHidden=1

" Searching the file system
map <leader>' :NERDTreeToggle<cr>

" Map ctrl+p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Ignore files in .gitignore when using Ctrl+P
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
