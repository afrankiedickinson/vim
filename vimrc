inoremap jj <ESC>
set tabstop=2 shiftwidth=4 expandtab
" turn hybrid line numbers off
set nonumber relativenumber
set nu rnu
" theme
syntax on
color dracula

call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'dracula/vim'

call plug#end()

