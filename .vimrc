set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Get theme from this and place *.vim file in ~/.vim/bundle/vim-airline/autoload/airline/themes/
" https://github.com/vim-airline/vim-airline-themes/tree/master/autoload/airline/themes
let g:AirlineTheme='jellybeans'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

syntax on

set t_Co=256
set term=screen-256color

" mkdir ~/.vim/colors and copy color file into it
colorscheme jellybeans

" Add line number
set number
highlight LineNr ctermfg=243 ctermbg=236

" Set a tab as 4 spaces
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Keep in visual mode after indenting
:vnoremap < <gv
:vnoremap > >gv

" Toggle paste mode
set pastetoggle=<F2>

" Remap
nnoremap <S-Tab> gT
nnoremap <Tab> gt

set backspace=indent,eol,start

" Highlight search results
:set hlsearch

" Remember cursor's last postion
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Highlight current line
set cursorline
hi CursorLine term=bold cterm=bold guibg=Yellow
