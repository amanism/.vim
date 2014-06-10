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
" Bundle 'https://github.com/vim-scripts/ShowMarks'
" Bundle 'https://github.com/vim-scripts/Visual-Mark'

" Github repos of the user 'vim-scripts'
" => can omit the username part
"Bundle 'L9'
"Bundle 'FuzzyFinder'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...
let NERDTreeWinSize = 26

highlight ShowMarksHLl ctermfg=white ctermbg=darkblue
highlight ShowMarksHLu ctermfg=white ctermbg=darkblue
highlight ShowMarksHLo ctermfg=white ctermbg=darkblue
highlight ShowMarksHLm ctermfg=white ctermbg=darkblue

"  - ShowMarksHLl : This group is used to highlight all the lowercase marks.
"  - ShowMarksHLu : This group is used to highlight all the uppercase marks.
"  - ShowMarksHLo : This group is used to highlight all other marks.
"  - ShowMarksHLm : This group is used when multiple marks are on the same line.

filetype plugin indent on     " required!

" syntax enable
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

map <F2> ]'
map <F3> ['

set wmh=0

" set foldmethod=syntax
" set foldmethod=marker
"
set foldmethod=indent
set foldmarker=[[[,]]]

hi Comment ctermfg=gray
hi Folded ctermbg=black
hi Folded ctermfg=cyan
"colorscheme torte
"colorscheme darkblue
"set viewdir=$HOME/.vim/view
"au BufNewFile,BufRead *.tpl setf smarty
"au BufWinEnter *.* silent loadview
"au BufWinLeave *.* silent mkview
au BufEnter * lcd %:p:h
set fileencodings=utf-8,big5,latin-1
set ffs=unix,dos ff=unix
" set enc=utf8
"
nmap <F8> :TagbarToggle<CR>
nnoremap <silent> <F5> :NERDTreeToggle<CR>
