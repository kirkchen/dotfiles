"compatible with vi
set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vim Color Schema
Plugin 'flazz/vim-colorschemes'
" Vim File Explorer
Plugin 'scrooloose/nerdtree'
" Vim Status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Vim Easymotion
Plugin 'Lokaltog/vim-easymotion'

" Rails
Plugin 'tpope/vim-rails'

" Golang
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"show line number
set number

"show syntax highlight
syntax on

set showmatch

set encoding=utf-8

set tabstop=4
set softtabstop=4

set nobackup

let mapleader = ','

colorscheme molokai 

"Airline settings
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'

"NERDTree settings
nmap <F2> :NERDTreeToggle <CR>

