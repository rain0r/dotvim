call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } 
Plug 'altercation/vim-colors-solarized'
call plug#end()

" Basics
set nocompatible
set number
set cursorline
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap

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

" Theme
syntax enable
set background=dark
colorscheme solarized

" ipdb
if has("autocmd") && !exists("autocommands_loaded")
    let autocommands_loaded=1

    autocmd FileType python abbr kipdb from ipdb import set_trace; set_trace()
    autocmd BufEnter * lcd %:p:h
endif

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
nnoremap <C-w> :tabclose<CR>

" Strip whitespaces
autocmd BufWritePre *.py :%s/\s\+$//e

" display command line in xmonad
map <F4> :let &lines=&lines-1<CR>
map <S-F4> :let &lines=&lines+1<CR>

