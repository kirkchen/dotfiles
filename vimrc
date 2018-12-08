" compatible with vi
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
" Vim comment
Plugin 'scrooloose/nerdcommenter'
" Vim multi selector
Plugin 'terryma/vim-multiple-cursors'
" Vim surround
Plugin 'tpope/vim-surround'
" Vim align
" Plugin 'junegunn/vim-easy-align'
" Vim time
" Plugin 'wakatime/vim-wakatime'
" Vim autoclose
Plugin 'Townk/vim-autoclose'
" Vim SearchFile
Plugin 'ctrlpvim/ctrlp.vim'
" Vim autocomplete
Plugin 'Valloric/YouCompleteMe'

" Git
" Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Rails
" Plugin 'tpope/vim-rails'

" Golang
" Plugin 'fatih/vim-go'
" Plugin 'majutsushi/tagbar'

" Puppet
" Plugin 'rodjek/vim-puppet'

" Html
Plugin 'mattn/emmet-vim'

" Groovy
" Plugin 'vim-scripts/groovy.vim'

" Javascript
" Plugin 'kchmck/vim-coffee-script'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" show line number
set number

" show syntax highlight
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

set guitablabel=%t

let mapleader = ','

colorscheme molokai

" Highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" ,/ turn off search highlighting
nmap <leader>/ :nohl<CR>

" ,p toggles paste mode
nmap <leader>p :set paste!<BAR>set paste?<CR>

" Airline settings
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1

" Ack settings
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" NERDTree settings
nmap <F2> :NERDTreeToggle<CR>

" NERDComment settings
let g:NERDSpaceDelims=1

" Tagbar settings
"let g:tagbar_type_go = {
"    \ 'ctagstype' : 'go',
"    \ 'kinds'     : [
"        \ 'p:package',
"        \ 'i:imports:1',
"        \ 'c:constants',
"        \ 'v:variables',
"        \ 't:types',
"        \ 'n:interfaces',
"        \ 'w:fields',
"        \ 'e:embedded',
"        \ 'm:methods',
"        \ 'r:constructor',
"        \ 'f:functions'
"    \ ],
"    \ 'sro' : '.',
"    \ 'kind2scope' : {
"        \ 't' : 'ctype',
"        \ 'n' : 'ntype'
"    \ },
"    \ 'scope2kind' : {
"        \ 'ctype' : 't',
"        \ 'ntype' : 'n'
"    \ },
"    \ 'ctagsbin'  : 'gotags',
"    \ 'ctagsargs' : '-sort -silent'
"	\ }
"nmap <F8> :TagbarToggle<CR>

" Golang
"au FileType go nmap <leader>r <Plug>(go-run)
"au FileType go nmap <leader>b <Plug>(go-build)
"au FileType go nmap <leader>t <Plug>(go-test)
"au FileType go nmap <leader>c <Plug>(go-coverage)
"au FileType go nmap <Leader>gd <Plug>(go-doc)
"au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
"au FileType go nmap <Leader>e <Plug>(go-rename)

"let g:go_fmt_command = "goimports"

" Ruby
"let g:tagbar_type_ruby = {
"    \ 'ctagstype' : 'Ruby',
"    \ 'kinds'     : [
"        \ 'c:classes',
"        \ 'f:methods',
"        \ 'F:singleton methods',
"        \ 'm:modules',
"        \ 'n:namespaces',
"        \ 't:tasks'
"    \ ]
"	\ }

" Vim auto align settings
" Start interactive EasyAlign in visual mode (e.g. vipga)
"xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
"nmap ga <Plug>(EasyAlign)

" Map capistrano file type
"au BufNewFile,BufRead *.cap set filetype=ruby

" Map jenkins file type
"au BufNewFile,BufRead Jenkinsfile set filetype=groovy

" Remove trailing white spaces
function StripTrailingWhitespace()
  if !&binary && &filetype != 'diff'
    normal mz
    normal Hmy
    %s/\s\+$//e
    normal 'yz<CR>
    normal `z
  endif
endfunction
