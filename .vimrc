syntax on

set t_Co=256
set term=screen-256color

colorscheme jellybeans

" Add line number
set number
highlight LineNr ctermfg=243 ctermbg=236

" Set a tab as 4 spaces
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Mode changing
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
