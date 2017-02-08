set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set hidden
syntax on

set autoindent
set ai
set smartindent
set nowrap

set ignorecase                  " Ignore case of searches.
set splitbelow                  " New window goes below
set splitright                  " New windows goes right

set colorcolumn=80
set paste
filetype plugin on

set guifont=Consolas:h11:cANSI

" GUI Toggle
function! ToggleGUI()
  if &guioptions=='i'
    exec('set guioptions=imea')
  else
    exec('set guioptions=i')
  endif
endfunction
map <F11> <Esc>:call ToggleGUI()<cr>
set guioptions=i

" Space/Tab Toggle
set noexpandtab
set softtabstop=0
set tabstop=4
set shiftwidth=4
function TabToggle()
	if &expandtab
		set noexpandtab
	else
		set expandtab
	endif
endfunction
nmap <F9> mz:execute TabToggle()<CR>'z

runtime autoload/autoload/pathogen.vim
execute pathogen#infect()

" Syntastic settings
" --------------------------------
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 4

let g:syntastic_javascript_checkers = ['eslint']

function! UpdateEslintPath()
	let g:eslint_path = system('npm bin') . '\eslint'
	let g:syntastic_javascript_eslint_exec = substitute(g:eslint_path, '\(.*\)\n\(.*\)', '\1\2', '')
endfunction

" Set eslint path on opening .js or .jsx
au BufRead,BufNewFile *.js,*.jsx execute UpdateEslintPath()

" Required by Pathogen Plugin Manager
if has("autocmd")
  filetype off
  filetype indent on
  filetype plugin on
endif

" Commands {{{
fun! StripTrailingWhitespace()
  " don't strip on these filetypes
  if &ft =~ 'markdown'
    return
  endif
  %s/\s\+$//e
endfun
autocmd BufWritePre * call StripTrailingWhitespace()

" JSON
au BufRead,BufNewFile *.json set ft=json syntax=javascript

" Jade
au BufRead,BufNewFile *.jade set ft=jade syntax=jade

" Common Ruby files
au BufRead,BufNewFile Rakefile,Capfile,Gemfile,.autotest,.irbrc,*.treetop,*.tt set ft=ruby syntax=ruby

" Go files
au BufRead,BufNewFile *.go set ft=go syntax=go

" Stylus
au BufRead,BufNewFile *.styl set ft=stylus syntax=stylus

set laststatus=2
set encoding=utf-8
set t_Co=256
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:jsx_ext_required=0
let g:EasyGrepOpenWindowOnMatch=0

"set statusline=%f               "Current path of file 
"set statusline+=%=              "Switch to right side 
"set statusline+=%l/%L/%c        "Current Line/Total Lines/Column

" Buffers
map <silent> <C-b> :buffers<CR>

" CtrlP ignore folders
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>

colorscheme jellybeans/colors/jellybeans
