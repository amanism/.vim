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
set ts=4 sw=4
map <C-J> <C-W><C-W><C-W>_
map <C-K> <C-W><C-K><C-W>_
set wmh=0
set foldmethod=marker
set foldmarker=[[[,]]]
"colorscheme torte
"set viewdir=$HOME/.vim/view
"au BufNewFile,BufRead *.tpl setf smarty
au BufWinEnter *.* silent loadview
au BufWinLeave *.* silent mkview
au BufEnter * lcd %:p:h
set fileencodings=utf-8,big5,latin-1
"set enc=utf8
