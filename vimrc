"set nocp
"filetype plugin on

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
"set fileencodings=utf-8
"set enc=utf8
