augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" https://github.com/preservim/vim-pencil/issues/93
" https://github.com/vimwiki/vimwiki/issues/738
let g:pencil#autoformat = 0
