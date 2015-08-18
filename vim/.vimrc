" begin vundle specifics
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'Rykka/riv.vim'

call vundle#end()
filetype plugin indent on
" end vundle specifics

let mapleader =","
map <leader>p :!clear;python %<CR>

"python
syntax on

set modeline

" unmap F1 Help annoyance
nmap <F1> <nop>
imap <F1> <nop>

" put git status, column/row number, total lines, and percentage in status
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]
" always show statusline
set laststatus=2

map <C-s> <esc>:w<CR>
" highlight the status bar when in insert mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
  au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
endif
 
"ctrlp config
let g:ctrlp_map = '<leader>f'
let g:ctrlp_max_height = 30
