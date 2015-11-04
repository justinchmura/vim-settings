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

" Searching the file system
map <leader>' :NERDTreeToggle<cr>
