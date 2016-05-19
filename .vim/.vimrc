set nocompatible
set number
set cursorline
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Monaco\ 12
  endif
endif

" Pathogen
call pathogen#infect()
call pathogen#helptags()
 
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
filetype plugin indent on
 
" Nerdtree
" autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
map <silent><c-tab> :NERDTreeToggle <cr>

set background=dark
colorscheme solarized

if has("autocmd") && !exists("autocommands_loaded")
    let autocommands_loaded=1

    autocmd FileType python abbr kipdb from ipdb import set_trace; set_trace()
    autocmd BufEnter * lcd %:p:h
endif

