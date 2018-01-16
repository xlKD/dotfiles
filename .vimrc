" Add line number
:set number

" Set a tab as 4 spaces
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set expandtab
  
 " Highlight search results
 :set hlsearch

 " Remember cursor's last postion
 if has("autocmd")
   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
 endif
