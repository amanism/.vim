set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" Bundle 'majutsushi/tagbar'
" Bundle 'altercation/vim-colors-solarized'
Bundle 'https://github.com/scrooloose/nerdtree'
Bundle 'https://github.com/majutsushi/tagbar'
Bundle 'https://github.com/vim-scripts/taglist.vim'

" Github repos of the user 'vim-scripts'
" => can omit the username part
"Bundle 'L9'
"Bundle 'FuzzyFinder'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!

syntax on
set exrc
set nu
set nobackup
"set expandtab
set tabstop=4 shiftwidth=4
set incsearch
set hlsearch
set linebreak
"set softtabstop=4 shiftwidth=4
map <C-J> <C-W><C-W><C-W>_
map <C-K> <C-W><C-K><C-W>_
set wmh=0
set foldmethod=marker
set foldmarker=[[[,]]]
"colorscheme torte
"set viewdir=$HOME/.vim/view
"au BufNewFile,BufRead *.tpl setf smarty
"au BufWinEnter *.* silent loadview
"au BufWinLeave *.* silent mkview
au BufEnter * lcd %:p:h
set fileencodings=utf-8,big5,latin-1
set ffs=unix,dos ff=unix
"set enc=utf8
"
nmap <F8> :TagbarToggle<CR>
nnoremap <silent> <F5> :NERDTreeToggle<CR>
