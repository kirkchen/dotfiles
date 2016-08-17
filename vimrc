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
" Vim Search
Plugin 'mileszs/ack.vim'

" Rails
Plugin 'tpope/vim-rails'

" Golang
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"show line number
set number

"show syntax highlight
syntax on

set showmatch

set encoding=utf-8

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set nobackup
set noswapfile

set hlsearch

let mapleader = ','

colorscheme molokai 

"Airline settings
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'

"Ack settings
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"NERDTree settings
nmap <F2> :NERDTreeToggle<CR>

"Tagbar settings
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
	\ }
nmap <F8> :TagbarToggle<CR>

" Golang
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>e <Plug>(go-rename)

" Ruby 
let g:tagbar_type_ruby = {
    \ 'ctagstype' : 'Ruby',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'f:methods',
        \ 'F:singleton methods',
        \ 'm:modules',
        \ 'n:namespaces',
        \ 't:tasks'
    \ ]
	\ }

