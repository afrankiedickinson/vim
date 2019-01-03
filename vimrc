inoremap jj <ESC>
set tabstop=2 shiftwidth=4 expandtab
" turn hybrid line numbers off
set nonumber relativenumber
set nu rnu
" theme
syntax on 
" Space as leader key 
let mapleader=" " 
call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'maksimr/vim-jsbeautify'
call plug#end()

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" formating jsx
map <c-f> :call JsBeautify()<cr>
color dracula

" use the system clipboard
set clipboard=unnamedplus
" Better default split open
set splitbelow
set splitright

" ----------------------------------------------------------------------------
" move to the window in the direction shown, or create a new split in that
" direction
" ----------------------------------------------------------------------------
func! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfu
 
nnoremap <silent> <C-h> :call WinMove('h')<cr>
nnoremap <silent> <C-j> :call WinMove('j')<cr>
nnoremap <silent> <C-k> :call WinMove('k')<cr>
nnoremap <silent> <C-l> :call WinMove('l')<cr>
" ----------------------------------------------------------------------------
